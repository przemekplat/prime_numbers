def CzyLiczPierwsza(liczba) #funkcja sprawdza czy dana liczba jest liczbą pierwszą
    i = 2.0
    iloscDzielnikow = 0 #liczba dzielników
    while i <= liczba
     if ((liczba / i) % 1).zero? && i != liczba then #sprawdzamy podzielność przez daną liczbę
        return true
       end
      i+=1
     end
return false
    end

puts "Wprowadz zakres końcowy"
usr_input = gets.chomp.to_i
puts "Ze zbioru liczb od 0 do #{usr_input} liczbami pierwszymi są:"
i = 0
while i < usr_input
  if CzyLiczPierwsza(i) == false
    puts i
  end
  i += 1
end
