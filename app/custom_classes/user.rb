class User
  attr_accessor :name
  class_attribute :name, instance_writer: false

  def initialize(name)
    @name = name
  end

end