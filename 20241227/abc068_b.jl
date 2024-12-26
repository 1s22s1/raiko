const ARR = [1, 2, 4, 8, 16, 32, 64]

function main()
    n = parseint()

    result = ARR[ARR .≤ n][end]

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
