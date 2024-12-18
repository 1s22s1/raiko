function main()
    n, m = parseints()

    g = [Int[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    seen = bfs(g, [1])

    for elem ∈ seen
        println(elem)
    end
end

function bfs(graph::Vector{Vector{Int64}}, starts::Vector{Int64})::Vector{Int64}
    seen = fill(-1, length(graph))

    queue = starts
    for start ∈ starts
        seen[start] = 0
    end

    while !isempty(queue)
        target_vertex = popfirst!(queue)

        for vertex ∈ graph[target_vertex]
            if seen[vertex] ≠ -1
                continue
            end

            push!(queue, vertex)
            seen[vertex] = seen[target_vertex] + 1
        end
    end

    return seen
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
