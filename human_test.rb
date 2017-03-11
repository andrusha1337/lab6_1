require './main_class'

print 'Задайте точность: '
epsilon = gets.to_f
int = Integr.new epsilon
puts "Значение интеграла, при заданной точности #{int.eps}: #{int.calc}"
puts "Число отрезков деления при изменении точности: #{int.n}"
