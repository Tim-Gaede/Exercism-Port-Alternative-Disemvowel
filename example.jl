function disemvowel(text::String)
    vowels_lower = "aeiouy"

    result = ""
    for char in text
        if lowercase(char) ∉ vowels_lower
            result *= char
        end
    end

    result # returned
end
