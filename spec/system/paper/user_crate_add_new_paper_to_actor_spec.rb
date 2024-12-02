require 'rails_helper'

describe 'usuário adiciona novo papel a ator' do
  it 'pela página dos atores' do
    user = FactoryBot.create(:user, email: 'joao@email.com')
    actor = FactoryBot.create(:actor, name: 'Carlos', nationality: 'Brasileiro')

    login_as user
    visit actor_path(actor)

    expect(page).to have_content 'Carlos'
    expect(page).to have_content 'Brasileiro'
    expect(page).to have_link 'Adcionar Papel'
  end
  
  it 'com sucesso' do
    user = FactoryBot.create(:user, email: 'joao@email.com')
    actor = FactoryBot.create(:actor, name: 'Carlos', nationality: 'Brasileiro')
    
    login_as user
    visit actor_path(actor)
    click_on 'Adicionar Papel'

    expect(page).to have_content 'Criar Papel'  
    expect(page).to have_field 'Personagem'
    expect(page).to have_field 'Filme'
    expect(page).to have_button 'Adcionar Papel'  
  end
  
end
