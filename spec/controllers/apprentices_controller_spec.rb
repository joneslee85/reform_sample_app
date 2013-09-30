require 'spec_helper'

describe ApprenticesController do
  describe 'POST #create' do
    it 'create new apprentice record' do
      expect { post :create, apprentice: { first_name: 'T', surname: 'L', gender: 'M' } }.to change { Apprentice.count }.by(1)
    end
  end
end