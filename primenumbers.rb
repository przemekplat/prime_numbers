def CzyLiczPierwsza(range_end) #funkcja sprawdza czy dana liczba jest liczbą pierwszą
  array =  Array.new(range_end + 1, true)
  array[0] = false
  array[1] = false
  i = 2
  (2...Math.sqrt(range_end)).each do |i|
    if array[i] == true
      (2 * i).step(range_end, i) do |j|
        array[j] = false
      end
    end
  end
  (0..array.length).each do |i|
    puts i if array[i] == true
  end
end

puts "Wprowadz zakres końcowy"
range_end = gets.chomp.to_i
puts "Ze zbioru liczb od 0 do #{range_end} liczbami pierwszymi są:"
CzyLiczPierwsza(range_end)
