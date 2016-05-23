require 'rails_helper'

RSpec.describe Patient, type: :model do
  before { @patient = FactoryGirl.build(:patient) }

  subject { @patient }

  it { should respond_to(:email) }
  it { should respond_to(:first_name) }
  it { should validate_presence_of(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:phone) }
  it { should validate_presence_of(:phone) }
  it { should respond_to(:name) }
  it { should be_valid }
end
