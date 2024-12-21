function main()
    h, w = parseints()

    if h == 1 || w == 1
        println(h * w)

        return
    end

    println(ceil(h / 2) * ceil(w / 2) |> Int)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
