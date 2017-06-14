class Department < ApplicationRecord
  with_options dependent: :destroy do |association|
    association.has_many :employees
  end
  alias_attribute :dep_name, :name

  has_one :chief

  delegate :name, to: :chief
end
