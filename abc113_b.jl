function main()
    n = parseint()
    t, a = parseints()
    hn = parseints()

    result = 1
    result_diff = abs(1000a - 1000t+6hn[begin])

    for i ∈ 2:n
        if abs(1000a - 1000t+6hn[i]) < result_diff
            result = i
            result_diff = abs(1000a - 1000t+6hn[i])
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
