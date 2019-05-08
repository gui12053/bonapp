require 'rails_helper'
describe ProductsController, type: :controller do

    before do
      @product = FactoryBot.create(:product)
      @user = FactoryBot.create(:user)

    end

    describe 'Get #index' do
        it 'renders products index page' do
            get :index
            expect(response).to be_ok
            expect(response).to render_template('index')
        end
    end

    describe 'Get #show' do
        it 'render products show page' do
            get :show, params: {id: @product}
            expect(response).to be_ok
            expect(response).to render_template('show')
        end
    end
end
