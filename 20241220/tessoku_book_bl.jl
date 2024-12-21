using DataStructures

function main()
    n, m = parseints()

    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b, c = parseints()

        push!(g[a], (b, c))
        push!(g[b], (a, c))
    end

    distances = fill(typemax(Int), n)
    distances[begin] = 0
    pq = PriorityQueue(0 => 1)

    # confirmed = []

    while !isempty(pq)
        _, cur_pos = peek(pq)
        dequeue!(pq)

        # if cur_pos ∉ confirmed
            # push!(confirmed, cur_pos)

            for (next_pos, next_cost) ∈ g[cur_pos]
                tmp_cost = distances[cur_pos] + next_cost

                if distances[next_pos] > tmp_cost
                    distances[next_pos] = tmp_cost
                    pq[tmp_cost] = next_pos
                end
            end
        end
    end

    for distance ∈ distances
        println(distance)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
