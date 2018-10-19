require 'rails_helper'

RSpec.describe Articles, type: :model do
    describe 'DB table' do
        it { is_expected.to have_db_column :id }
        it { is_expected.to have_db_column :title }
        it { is_expected.to have_db_column :content }
    end

    describe 'Validations' do
        it { is_expected.to validate_presence_of :title }
        it { is_expected.to validate_presence_of :content }
    end

    describe 'Factory' do
        it 'should have a valid Factory' do
            expect(FactoryBot.create(:articles)).to be_valid
        end
    end
end