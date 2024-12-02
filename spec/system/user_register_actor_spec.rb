require 'rails_helper'

describe 'usuário registra ator ou atriz' do
  it 'pela nav' do
    user = FactoryBot.create(:user)

    login_as user
    visit root_path
    within 'nav' do
      click_on 'Atores'
    end

    expect(page).to have_link 'Criar Novo Ator'
  end
  
end
