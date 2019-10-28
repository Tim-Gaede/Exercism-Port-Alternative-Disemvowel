using Test

include("disemvowel.jl")

# Tests adapted from `problem-specifications//canonical-data.json` @ v1.2.0


println("\n"^2, "-"^60, "\n"^3)

@testset "Geeting." begin
    @test disemvowel("Hello, World!") == "Hll, Wrld!"
end
println()

@testset "Said on moon." begin
    text = "Houston, Tranquillity Base here. The Eagle has landed."
    @test disemvowel(text) == "Hstn, Trnqllt Bs hr. Th gl hs lndd."
end
println()

@testset "Douglas Adams work." begin
    text = "The Answer to the Great Question..." *
           "Of Life, the Universe and Everything..." *
           "Is..." *
           "Is..." *
           "Forty-two."
    expected = "Th nswr t th Grt Qstn...f Lf, th nvrs nd vrthng...s...s...Frt-tw."
    @test disemvowel(text) == expected
end
println()
