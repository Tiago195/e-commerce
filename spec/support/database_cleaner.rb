RSpec.configure do |config|
  # Antes de executar o rspec, o databaseCleaner limpa o banco de dados com truncationn
  config.before(:suit) do
    DatabaseCleaner.clean_with(:truncation)
  end
  # Antes de cada teste, o databaseCleaner utiliza a estrategia de transaction
  # isso significa que se ao executar alguma tarefa no banco de dados algo der errado ele lança um erro 
  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end
  # Mesma configuração de cima, porem para javaScript
  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :transaction
  end
  # Antes de cada teste, inicia o databaseCleaner
  config.before(:each) do
    DatabaseCleaner.start
  end
  # Depois de executar cada teste, limpa o db
  config.after(:each) do
    DatabaseCleaner.clean
  end
end
