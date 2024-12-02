require 'rails_helper'

describe 'usuário vê todos os atores' do
  it 'pela nav' do
    user = FactoryBot.create(:user)

    login_as user
    visit root_path
    within 'nav' do
      click_on 'Atores'
    end

    expect(page).to have_content 'Atores'
    expect(page).to have_link 'Adicionar Ator'
    expect(page).to have_content 'Nenhum Ator Cadastrado'
  end

  it 'e vê vários atores' do
    user = FactoryBot.create(:user)
    actor1 = FactoryBot.create(:actor, name: 'teste1')
    actor2 = FactoryBot.create(:actor, name: 'teste2')

    login_as user
    visit actors_path

    expect(page).to have_content 'Nome'  
    expect(page).to have_content 'Nacionalidade'  
    expect(page).to have_content 'Data de Nascimento'
    expect(page).to have_content 'teste1'
    expect(page).to have_content 'teste2'
  end
  
end
