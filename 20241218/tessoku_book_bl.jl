function main()
    n, m = parseints()

    g = [[] for _ ∈ 1:n]

    distances = fill(typemax(Int), n)
    distances[begin] = 0
    not_confirmed = Set(1:n)

    for _ ∈ 1:m
        a, b, c = parseints()

        push!(g[a], (b, c))
        push!(g[b], (a, c))
    end

    while true
        current_position = -1
        current_distance = typemax(Int)

        for i ∈ 1:n
            if i ∈ not_confirmed && distances[i] ≤ current_distance
                current_position = i
                current_distance = distances[i]
            end
        end

        if current_position == -1
            break
        end

        delete!(not_confirmed, current_position)

        for (next_position, next_cost) ∈ g[current_position]
            distances[next_position] =
                min(distances[next_position], distances[current_position] + next_cost)
        end
    end

    for elem ∈ distances
        println(elem)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
