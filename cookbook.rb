INSERIR_RECEITA = 1
EXIBIR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

def bem_vindo
  puts 'Bem-vindo ao Cookbook, sua rede social de receitas.'
end

def menu
  puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
  puts "[#{EXIBIR_RECEITAS}] Exibir menu de receitas"
  puts "[#{BUSCAR_RECEITAS}] Buscar receitas"
  puts "[#{SAIR}] Sair"

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
    if receitas.empty?
      puts 'Nenhuma receita cadastrada.'
    end
  puts
end


 

bem_vindo

receitas = []

opcao = menu



loop do 
  if opcao == INSERIR_RECEITA
    receitas << inserir_receita
  elsif opcao == EXIBIR_RECEITAS
    imprimir_receitas(receitas)
  elsif opcao == SAIR
    break
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