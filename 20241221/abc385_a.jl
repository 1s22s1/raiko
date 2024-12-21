function main()
    a, b, c = parseints()

    if a == b == c
        println("Yes")

        return
    end

    if a + b == c
        println("Yes")

        return
    end

    if a + c == b
        println("Yes")

        return
    end

    if a == b + c
        println("Yes")

        return
    end

    println("No")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
