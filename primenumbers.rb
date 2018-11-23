def CzyLiczPierwsza(liczba) #funkcja sprawdza czy dana liczba jest liczbą pierwszą
    i = 2.0
    while i <= liczba
     if ((liczba / i) % 1).zero? && i != liczba then #sprawdzamy podzielność przez daną liczbę
       return false
       end
      i+=1
     end
return true
    end

puts "Wprowadz zakres końcowy"
usrInput = gets.chomp.to_i
puts "Ze zbioru liczb od 0 do #{usrInput} liczbami pierwszymi są:"
i = 2
while i <= usrInput
  if CzyLiczPierwsza(i) == true
    puts i
  end
  i += 1
end
