function main()
    n, m = parseints()

    global g = [Int[] for _ ∈ 1:n]
    global seen = fill(false, n)

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    dfs(1)

    if all(seen)
        println("The graph is connected.")
    else
        println("The graph is not connected.")
    end
end

function dfs(vertex)
    seen[vertex] = true

    for next_vertex ∈ g[vertex]
        if seen[next_vertex]
            continue
        end

        dfs(next_vertex)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
