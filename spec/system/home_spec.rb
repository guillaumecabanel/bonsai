require 'rails_helper'

RSpec.describe 'Homepage', type: :system do
  let(:first_user) { create(:user, nickname: 'first user') }
  let(:last_user) { create(:user, nickname: 'last user') }

  before :each do
    create_list(:plant, 3, user: last_user, created_at: Date.today)
    create_list(:plant, 2, user: first_user, created_at: Date.yesterday)
  end

  it 'shows the 3 last plants' do
    visit '/'
    expect(page).to have_selector('.plant', count: 3)
    expect(page).to have_selector('.plant-owner', text: 'last user')
    expect(page).to have_no_selector('.plant-owner', text: 'first user')
  end

  it 'has a GET STARTED link' do
    visit '/'
    expect(page).to have_link('GET STARTED')
  end

  context "when visitor isn't signed-in" do
    it 'have a login link' do
      visit '/'
      expect(page).to have_link('Login', href: '/users/sign_in')
    end
  end

  context "when user is signed-in" do
    before :each do
      sign_in first_user
    end

    it 'have a logout link' do
      visit '/'
      expect(page).to have_link('Logout', href: '/users/sign_out')
    end
  end
end
