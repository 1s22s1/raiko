function main()
    n, m = parseints()

    g = [Int[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    for i ∈ 1:n
        println("$(i): {$(join(g[i], ", "))}")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
