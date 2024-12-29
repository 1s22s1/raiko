function main()
    n, k = parsestrings()
    k = parse(Int, k)

    for i ∈ 1:k
        n = parse(Int, n, base = 8)
        n = string(n, base = 9)
        n = replace(n, "8" => "5")
    end

    println(n)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
