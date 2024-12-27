function main()
    a, b = parseints()

    result = 0

    for i ∈ a:b
        if i |> string == i |> string |> reverse
            result += 1
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
