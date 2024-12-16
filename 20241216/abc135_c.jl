function main()
    n = parseint()
    an = parseints()
    bn = parseints()

    result = 0
    for i ∈ 1:n
        # More monsters
        if an[i] ≥ bn[i]
            result += bn[i]
            an[i] -= bn[i]
            bn[i] = 0
        else
            result += an[i]
            bn[i] -= an[i]
            an[i] = 0
        end

        # More monsters
        if an[i+1] ≥ bn[i]
            result += bn[i]
            an[i+1] -= bn[i]
            bn[i] = 0
        else
            result += an[i+1]
            bn[i] -= an[i+1]
            an[i+1] = 0
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
