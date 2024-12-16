function main()
    mod = 10^9 + 7
    n, l = parseints()

    dp = fill(0, n + 1)
    dp[begin] = 1

    for i ∈ 1:n+1
        if i + 1 ≤ n + 1
            dp[i+1] = (dp[i+1] + dp[i]) % mod
        end

        if i + l ≤ n + 1
            dp[i+l] = (dp[i+l] + dp[i]) % mod
        end
    end

    result = dp[end]
    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
