function main()
    n, m = parseints()

    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b, c = parseints()

        push!(g[a], (b, c))
        push!(g[b], (a, c))
    end

    confirmed = Set()
    distances = fill(typemax(Int), n)
    distances[begin] = 0

    while true
        cur_position = -1
        cur_distance = typemax(Int)

        for i ∈ 1:n
            if i ∉ confirmed && distances[i] ≤ cur_distance
                cur_position = i
                cur_distance = distances[i]
            end
        end

        if cur_position == -1
            break
        end

        push!(confirmed, cur_position)

        for (next, cost) ∈ g[cur_position]
            distances[next] = min(distances[next], distances[cur_position] + cost)
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
