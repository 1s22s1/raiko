using OffsetArrays

function main()
    n, w = parseints()
    wvn = [parseints() for _ ∈ 1:n]

    wvn = OffsetArray(wvn, 0:n-1)

    dp = OffsetArray(fill(-1, n + 1, w + 1), 0:n, 0:w)
    dp[0, 0] = 0

    for i ∈ 0:n-1, j ∈ 0:w
        weight, value = wvn[i]

        if dp[i, j] ≠ -1
            dp[i+1, j] = max(dp[i+1, j], dp[i, j])

            if j + weight ≤ w
                dp[i+1, j+weight] = max(dp[i+1, j+weight], dp[i, j] + value)
            end
        end
    end

    result = maximum(dp[end, :])
    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
