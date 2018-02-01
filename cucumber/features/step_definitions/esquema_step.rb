Dado("que esteja na tela Inicial") do
  @cad = ScreenCadastroSteps.new
  find_element(:xpath, "//*[@text='Nota 1:']").displayed?
end

Quando("preencher as notas {string} {string} {string} e calcular") do |string, string2, string3|
  @cad.preencher(string, string2, string3)
  @cad.swipedown  
  @cad.calcular
end

Entao("deve exibir a mensagem de {string}.") do |msg|
  @cad.swipeup
  @cad.resultado(msg)
end

Quando("preencher as notas e calcular") do
  @cad.keyboard
  @cad.calcular
end

Quando("preencher as notas e ler Push") do
  @cad.key
  @cad.viewpush
end

Quando("calcular") do
  @cad.swipedown  
  @cad.calcular
end

Quando("preencher as notas e sair do aplicativo") do
  @cad.keyback
  @cad.home
end

Quando("voltar e calcular") do
  @cad.backapp
  @cad.calcular
end