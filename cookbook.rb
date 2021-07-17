puts 'Bem-vindo ao Cookbook, sua rede social de receitas.'
puts
receitas = []
tipos = []
puts '[1] Cadastrar uma receita'
puts '[2] Exibir menu de receitas'
puts '[3] Sair'

print 'Escolha uma opção: '
opcao = gets.to_i


while (opcao != 3) do 
  if opcao == 1
    puts 'Digite o nome da receita: '
    nome_receita = gets.chomp
    puts 'Digite o tipo de receita: '
    tipo_receita = gets.chomp
    
    receitas << { nome: nome_receita, tipo: tipo_receita }
    puts
    puts "Receita #{nome_receita} cadastrada com sucesso!"
    puts
  elsif opcao == 2
    puts '======== Receitas Cadastradas ========'
    receitas.each do
      puts "#{nome_receita} - #{tipo_receita}"
    end
    puts    
  else
    puts 'Opção inválida.'
    puts
  end

puts '[1] Cadastrar o nome de uma receita'
puts '[2] Exibir menu de receitas'
puts '[3] Sair'

print 'Escolha uma opção: '
opcao = gets.to_i

end

puts 'Obrigado por usar o Cookbook, até mais.'


#   for nome_receita in receitas do
#     puts nome_receita
#   end
# Trecho pode ser substituído por:

#   receitas.each do |nome_receita|
#     puts nome_receita
#   end
# Tudo isso pode ser simplesmente: