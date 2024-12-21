# 高さ毎にインデックスを分けて扱えば良さそう。高さの差をとった後からは、考察が分かりませんでした、、、とにかく今の自分にとっては難しいです、、、

function main()
    n = parseint()
    hn = parseints()

    dict = Dict()
    for i ∈ 1:n
        arr = get(dict, hn[i], [])
        push!(arr, i)

        dict[hn[i]] = arr
    end

    @show dict
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
