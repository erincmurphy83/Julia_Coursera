using Plots

pyplot()

using DelimitedFiles

EVDdata = readdlm("EVDwikiConverted.csv", ',')  # don't forget the delimiter!
epidays = EVDdata[:, 1]  # Here ":" means all the entries in all rows of the specified columns
allcases = EVDdata[:, 2]

plot(epidays, allcases)

plot(epidays, allcases, linetype = :scatter, marker = :diamond)

plot(epidays, allcases,
title = "West African EVD epidemic, total cases",
xlabel = "Days since 22 Mar 2014",
ylabel = "Total cases to date (three countries)",
marker = :diamond, line = (:path, :dot, :blue),
legend = false, grid = false)

rows, cols = size(EVDdata)  # size() is a very useful function ... look it up with "? size"
for j = 1:cols
    for i = 1:rows  # this order goes does one column at a time
       if !isa(EVDdata[i,j], Number)  # remember that "!" is the NOT operator (week 1, lecture 5)
         EVDdata[i,j] = 0
       end
   end
end

EVDcasesbycountry = EVDdata[:, [4, 6, 8]]
plot(epidays, EVDcasesbycountry)

plot(epidays, EVDcasesbycountry,
marker = ([:octagon :star7 :square], 9),
label     = ["Guinea" "Liberia" "Sierra Leone"],
title      = "EVD in West Africa, epidemic segregated by country",
xlabel   = "Days since 22 March 2014",
ylabel   = "Number of cases to date",
line = (:scatter)
)

# 2x^3 - 9x^2 + 6x + 15
