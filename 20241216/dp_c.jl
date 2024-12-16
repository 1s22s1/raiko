function main()
    n = parseint()
    happy_arr = [parseints() for _ ∈ 1:n]

    dp = fill(-1, n, 3)

    dp[1, 1] = happy_arr[1][1]
    dp[1, 2] = happy_arr[1][2]
    dp[1, 3] = happy_arr[1][3]

    for i ∈ 2:n
        dp[i, 1] = happy_arr[i][1] + max(dp[i-1, 2], dp[i-1, 3])
        dp[i, 2] = happy_arr[i][2] + max(dp[i-1, 1], dp[i-1, 3])
        dp[i, 3] = happy_arr[i][3] + max(dp[i-1, 1], dp[i-1, 2])
    end

    result = maximum(dp[end, :])
    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
