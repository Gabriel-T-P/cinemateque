require 'rails_helper'

describe 'usuário registra ator ou atriz' do
  it 'pela nav' do
    user = FactoryBot.create(:user)

    login_as user
    visit root_path
    within 'nav' do
      click_on 'Atores'
    end
    click_on 'Adicionar Ator'

    expect(page).to have_content 'Novo Ator'
    expect(page).to have_field 'Nome'
    expect(page).to have_field 'Data de Nascimento'
    expect(page).to have_field 'Nacionalidade'
    expect(page).to have_button 'Criar Ator'
  end
  
  it 'e não está logado' do
    
    visit actors_path

    expect(current_path).to eq new_user_session_path
  end


end
