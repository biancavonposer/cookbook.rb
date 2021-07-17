def bem_vindo
  puts 'Bem-vindo ao Cookbook, sua rede social de receitas.'
end

def menu
  puts '[1] Cadastrar uma receita'
  puts '[2] Exibir menu de receitas'
  puts '[3] Sair'

  print 'Escolha uma opção: '
  return gets.to_i
end

def inserir_receita
  puts 'Digite o nome da receita: '
  nome_receita = gets.chomp
  puts 'Digite o tipo de receita: '
  tipo_receita = gets.chomp

  puts
  puts "Receita #{nome_receita} cadastrada com sucesso!"
  puts
  return { nome: nome_receita,tipo: tipo_receita }
end

def imprimir_receitas(receitas)
  puts '======== Receitas Cadastradas ========'
    receitas.each do |receita|
      puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
  puts
end


 

bem_vindo

receitas = []

opcao = menu



while (opcao != 3) do 
  if opcao == 1
    receitas << inserir_receita
  elsif opcao == 2
    imprimir_receitas(receitas)
  else
    puts 'Opção inválida.'
    puts
  end

opcao = menu

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