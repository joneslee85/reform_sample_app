class Person < ActiveRecord::Base
  has_one :bank_account, as: :bankable, dependent: :destroy

  def full_name
    "#{first_name} #{surname}"
  end
end