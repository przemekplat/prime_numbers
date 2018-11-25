def CzyLiczPierwsza(liczba) #funkcja sprawdza czy dana liczba jest liczbą pierwszą
if liczba > 10 then #liczby które mają na 
   return false if liczba > 10 && (liczba % 10) == 2 || (liczba % 10) == 4 || (liczba % 10) == 5 || (liczba % 10) == 8 || (liczba % 10) == 0
end
    i = 2.0
    while i <= liczba/2
     return false if  ((liczba / i) % 1).zero?  #sprawdzamy podzielność przez daną liczbę
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
