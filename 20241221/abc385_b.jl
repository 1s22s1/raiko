function main()
    h, w, x, y = parseints()
    s = [split(parsestring(), "") for _ ∈ 1:h]
    t = parsestring()

    houses = []
    for c ∈ t
        if c == 'U'
            if x - 1 ∈ 1:h && s[x-1][y] ≠ "#"
                x -= 1

                if s[x][y] == "@"
                    push!(houses, [x, y])
                end
            end
        elseif c == 'D'
            if x + 1 ∈ 1:h && s[x+1][y] ≠ "#"
                x += 1

                if s[x][y] == "@"
                    push!(houses, [x, y])
                end
            end
        elseif c == 'L'
            if y - 1 ∈ 1:w && s[x][y-1] ≠ "#"
                y -= 1

                if s[x][y] == "@"
                    push!(houses, [x, y])
                end
            end
        elseif c == 'R'
            if y + 1 ∈ 1:w && s[x][y+1] ≠ "#"
                y += 1

                if s[x][y] == "@"
                    push!(houses, [x, y])
                end
            end
        end
    end

    println("$(x) $(y) $(length(unique(houses)))")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
