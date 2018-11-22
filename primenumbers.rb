def CzyLiczPierwsza(liczba) #funkcja sprawdza czy dana liczba jest liczbą pierwszą
  i = 1.0
  dzielniki = 0 #liczba dzielników
  while i <= liczba
   if ((liczba / i) % 1).zero? then #spradzamy podzielność
     dzielniki += 1
   end
   i+=1
  end
  if dzielniki == 2 then #liczby pierwsze dzielą się tylko przez dwa dzielniki (1 oraz ona sama)
    return true
  else
    return false
end
end


puts "Wprowadz zakres końcowy"
input = gets.chomp.to_i
puts "Ze zbioru liczb liczbami pierwszymi są:"
i = 0
while i < input
  if CzyLiczPierwsza(i) == true
    puts i
  end
  i += 1
end
