function main()
    n = parseint()
    ab = [parseints() for _ ∈ 1:n]

    result = 0

    for (a, b) ∈ reverse(ab)
        result += b - (a + result) % b
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
