function main()
    n = parseint()
    an = parseints()

    result = 0
    number = 1
    satisfied_arr = []

    while !isempty(an)
        x = popfirst!(an)

        if number == x
            push!(satisfied_arr, x)

            number += 1
        end
    end

    if isempty(satisfied_arr)
        println(-1)
    else
        println(n - length(satisfied_arr))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
