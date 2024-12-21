function main()
    n, m = parseints()

    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b, c = parseints()

        push!(g[a], (b, c))
        push!(g[b], (a, c))
    end

    confirmed = []
    distances = fill(typemax(Int), n)
    distances[begin] = 0

    while true
        cur_pos = -1
        min_distance = typemax(Int)
        for i ∈ 1:n
            if i ∉ confirmed && distances[i] ≤ min_distance
                min_distance = distances[i]
                cur_pos = i
            end
        end

        if cur_pos == -1
            break
        end

        push!(confirmed, cur_pos)
        for (next_pos, cost) ∈ g[cur_pos]
            distances[next_pos] = min(distances[next_pos], distances[cur_pos] + cost)
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
