function inverse(f)
    g = Int64[]
    for i in eachindex(f) push!(g,findfirst(isequal(i),f)) end
    g
end

function composition(f,g)
    h = Int64[]
    for i in eachindex(f) push!(h,f[g[i]]) end
    h
end
