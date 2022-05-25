require 'rails_helper'

RSpec.describe 'Splashes', type: :request do
  describe 'GET /index' do
    it 'renders index page successfully' do
      get splashes_url
      expect(response).to be_successful
    end
  end
end
