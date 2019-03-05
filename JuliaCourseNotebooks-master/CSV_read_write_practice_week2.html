var1 = randn(10)

using DelimitedFiles

EVDwiki = readdlm("wikipediaEVDraw.csv", ',')
col1 = EVDwiki[:, 1]

using Dates

for i =1:54
    col1[i] = DateTime(EVDwiki[i, 1], "d u y")
end

daysSinceMar22(x) = Dates.datetime2rata(x) - Dates.datetime2rata(col1[54])
epidays = Array{Int64}(undef, 54)
for i = 1:54
    epidays[i] = daysSinceMar22(col1[i])
end

# testString = Array{String}(undef, 2, 2)
EVDwiki[:, 1] = epidays
writedlm("EVDwikiConverted.csv", EVDwiki, ',')
