require "rails_helper"

#test suite for the TodoItem model

RSpec.describe TodoItem, type: :model do
  #relationship test
  it { should belong_to (:account) }

  #Validation test
  it { should validate_presence_of (:title) }
end