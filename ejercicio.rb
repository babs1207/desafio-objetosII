class Carta
  attr_reader :numero, :pinta
  def initialize
    @numero = %w(1 2 3 4 5 6 7 8 9 10 J Q K).sample
    @pinta = %W(Corazon Trebol Pica Diamantes).sample
  end

  def resultado
    " #{@numero} de #{@pinta}"
  end
end

def menu
  puts 'Jugar'
  puts 'Mostrar'
  puts 'Salir'
end

mano = []
menu
opcion = gets.chomp
while opcion != 'salir'
  if opcion == 'jugar'
    5.times do
      new_carta = Carta.new
      mano << new_carta.resultado
    end
  elsif opcion == 'mostrar'
    puts mano.last(5)
  end
  menu
  opcion = gets.chomp
end

