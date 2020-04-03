Dado("que esteja na tela inicial do aplicativo") do
    @pesquisar = Pesquisar.new
    @pesquisar.inicial
end

Quando("pesquisar instagram") do
    @pesquisar.instagram
end
  
Então("vou visualizar o app instagram") do
    @pesquisar.respostainstagram
end