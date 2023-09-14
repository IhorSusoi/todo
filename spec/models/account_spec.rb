require "rails_helper"

#test suite for Account model

RSpec.describe Account, type: :model do
  #Relationship test

  it { should have_many (:todo_items) }
end