function main()
    a, b, k = parseints()

    if a + (k - 1) < b - (k - 1)
        for i ∈ a:a+(k-1)
            println(i)
        end

        for i ∈ b-(k-1):b
            println(i)
        end
    else
        for i ∈ a:b
            println(i)
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
