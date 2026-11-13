class Idea < ApplicationRecord
  validates :description, :author, presence: true
end

# validates is a Rails method used to define validation rules.
# presence: true means the attribute must contain a value. It cannot be blank.


# Model :	Data, database relationships, and validation rules
