# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Cities', type: :request do
  describe 'GET /cities' do
    it 'retorna as cidades com base no estado' do
      state = State.create(description: 'Paraná')
      city = City.create(description: 'Curitiba', state: state)

      get cities_path, params: { state_id: state.id }
      expect(response).to have_http_status(200)
      expect(response.body).to include(city.description)
    end

    it 'retorna as cidades com base no nome' do
      state = State.create(description: 'Paraná')
      city = City.create(description: 'Curitiba', state: state)

      get cities_path, params: { description: 'Curitiba' }
      expect(response).to have_http_status(200)
      expect(response.body).to include(city.description)
    end
  end
end
