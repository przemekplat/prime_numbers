def CzyLiczPierwsza(liczba) #funkcja sprawdza czy dana liczba jest liczbą pierwszą
  i = 1.0
  iloscDzielnikow = 0 #liczba dzielników
  while i <= liczba 
   if ((liczba / i) % 1).zero? then #sprawdzamy podzielność przez daną liczbę
     iloscDzielnikow += 1
   end
   i+=1
  end
  if iloscDzielnikow == 2 then #liczby pierwsze posiadają dokładnie dwa dzielniki naturalne: jedynkę i siebie samą
    return true
  else
    return false
  end
end

puts "Wprowadz zakres końcowy"
usr_input = gets.chomp.to_i 
puts "Ze zbioru liczb od 0 do #{usr_input} liczbami pierwszymi są:"
i = 0
while i < usr_input
  if CzyLiczPierwsza(i) == true
    puts i
  end
  i += 1
end
