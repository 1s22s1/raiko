function main()
    a, b = parseints()

    result = -1

    for i ∈ 1250:-1:0
        if floor(0.08i) == a && floor(0.10i) == b
            result = i
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
