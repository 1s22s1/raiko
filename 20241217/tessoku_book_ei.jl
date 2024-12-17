function main()
    n, m = parseints()

    global g = [Int[] for _ ∈ 1:n]
    global seen = fill(false, n)
    global path = Dict()

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    dfs(1)

    result = []
    cur = n

    while cur ≠ 1
        push!(result, cur)

        cur = get(path, cur, -1)
    end

    push!(result, 1)

    println(join(reverse(result), " "))
end

function dfs(vertex)
    seen[vertex] = true

    for next_vertex ∈ g[vertex]
        if seen[next_vertex]
            continue
        end

        path[next_vertex] = vertex
        dfs(next_vertex)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
