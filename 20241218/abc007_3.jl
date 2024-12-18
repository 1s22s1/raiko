function main()
    r, c = parseints()
    sy, sx = parseints()
    gy, gx = parseints()

    c = [split(parsestring(), "") for _ ∈ 1:r]

    seen = maze_bfs(c, [[sy, sx]])

    println(seen[gy, gx])
end

function maze_bfs(
    maze::Vector{Vector{SubString{String}}},
    starts::Vector{Vector{Int64}},
)::Matrix{Int64}
    h = length(maze)
    w = length(maze[begin])
    seen = fill(-1, h, w)

    queue = starts
    for start ∈ starts
        seen[start[begin], start[end]] = 0
    end

    while !isempty(queue)
        cur_pos = popfirst!(queue)

        for (x, y) ∈ [[1, 0], [-1, 0], [0, -1], [0, 1]]
            next_x = cur_pos[begin] + x
            next_y = cur_pos[end] + y

            if next_x ∈ 1:h &&
               next_y ∈ 1:w &&
               maze[next_x][next_y] == "." &&
               seen[next_x, next_y] == -1
                push!(queue, [next_x, next_y])

                seen[next_x, next_y] = seen[cur_pos[begin], cur_pos[end]] + 1
            end
        end
    end

    return seen
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
