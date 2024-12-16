function main()
    n, m = parseints()
    am = [parseint() for _ ∈ 1:m]

    dp = fill(-1, n + 1)

    if 1 ∈ am
        dp[begin] = 0
    else
        dp[begin] = 1
    end

    if 2 ∈ am
        dp[2] = 0
    else
        dp[2] = 2
    end

    for i ∈ 3:n+1
        if i ∈ am
            dp[i] = 0
        else
            dp[i] = (dp[i-1] + BigInt(dp[i-2])) % 1_000_000_007
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
