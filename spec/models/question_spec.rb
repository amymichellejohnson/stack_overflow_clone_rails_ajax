require 'rails_helper'

describe Question do
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should belong_to :user }
  it { should belong_to :best_response }
  it { should have_many :responses }
end
