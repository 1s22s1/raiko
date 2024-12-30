using Primes

function main()
    n = parseint()
    an = parseints()

    result = typemax(Int)

    for a ∈ an
        count = 0
        while iseven(a)
            count += 1
            a ÷= 2
        end

        result = min(result, count)
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
