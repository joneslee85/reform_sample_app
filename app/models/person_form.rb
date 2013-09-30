class PersonForm < Reform::Form

  property :title
  property :first_name
  property :middle_name
  property :surname
  property :gender
  property :tyims_id
  property :date_of_birth

  validates :first_name, :surname, :gender, presence: true
  validates :gender, inclusion: { in: ['M', 'F'] }

end