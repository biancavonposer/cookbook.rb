puts 'Bem-vindo ao Cookbook, sua rede social de receitas.'

receitas = []
puts '[1] Cadastrar o nome de uma receita'
puts '[2] Exibir menu de receitas'
puts '[3] Sair'

print 'Escolha uma opção: '
opcao = gets.to_i


while (opcao != 3) do 
  if opcao == 1
    puts 'Digite o nome da receita: '
    nome_receita = gets.chomp
    receitas << nome_receita
    puts "Receita #{nome_receita} cadastrada com sucesso!"
  elsif opcao == 2
    puts '======== Receitas Cadastradas ========'
    puts receitas
  else
    puts 'Opção inválida.'
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