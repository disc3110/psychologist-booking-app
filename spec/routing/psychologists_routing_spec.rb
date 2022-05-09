require 'rails_helper'

RSpec.describe PsychologistsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/psychologists').to route_to('psychologists#index')
    end

    it 'routes to #show' do
      expect(get: '/psychologists/1').to route_to('psychologists#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/psychologists').to route_to('psychologists#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/psychologists/1').to route_to('psychologists#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/psychologists/1').to route_to('psychologists#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/psychologists/1').to route_to('psychologists#destroy', id: '1')
    end
  end
end
