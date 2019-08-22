require_relative 'ejercicio1.rb'

puts 'Bienvenido a Las Vegas'
puts 'Estás listo para perder tu dinero?'
puts '------------------------------------------'

while true

puts 'Elige una de las siguientes opciones:'
puts 'Jugar, Mostrar o Salir'
option = gets.chomp.downcase.to_sym
player = Player.new

  case option
  when :jugar
    player.play
    puts 'Estás en una nueva partida'
  when :mostrar
    player.show_hand
  when :salir
    puts 'Te quedaste sin plata? Ya, Chao!'
    exit
  else
    puts 'Elige una de las opciones anteriores, no olvides dejar para la micro'
  end
end
