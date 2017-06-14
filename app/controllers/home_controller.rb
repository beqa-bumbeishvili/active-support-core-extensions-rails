class HomeController < ApplicationController
  include First

  def index

  end

  def extensions
    @conditions_array = []

    params.except(:action, :controller).each do |parameter|
      @conditions_array << {value: params[parameter], function: parameter, condition: params[parameter].send(parameter) }
    end
  end

  def custom_calculations
    using_next = nil.try(:next)
    emp_name_age = Employee.first.try{ |emp| "#{emp.name} #{emp.age}" }
    using_in = 25.in?(20..50)
    modules = First::Second::Third.parent_name
    instance_values = Employee.new.instance_values
    instance_variable_names = Employee.new.instance_variable_names
    name = SubUser.name
    user = User.new('user')
    user.name = 'user1'
    sub_classes = User.subclasses
    descendants = SubUser.descendants
    remove =  'Ruby On Rails'.remove(/Ruby ON /)
    squish =  '   some    indented string  '.squish
    truncate =  'dsasds ds sa s sd saassadds ds sad sa sda'.truncate(10, separator: ' ')
    truncate_words =  'quick brows fox jumps over lazy dog'.truncate_words(4)
    inquiry = 'random_string'.inquiry.random_string?
    starts_with = 'car'.starts_with?('c')
    position_at = 'random_string'.at(4)
    position_from = 'random_string'.from(6)
    position_to = 'random_string'.to(5)
    first_letters = 'some_string'.first(4)
    last_letters = 'some_string'.last(7)
    pluralize = 'apple'.pluralize
    singularize = 'people'.singularize
    camelize = 'admin_panel'.camelize
    underscore ='RubyOnRails'.underscore
    titleize = 'game_of_thrones'.titleize
    dasherize = 'name_and_lastname'.dasherize
    parameterize = 'Will Smith'.parameterize
    tableize = 'NcspElement'.tableize
    classify = 'contact_info'.classify
    constantize = 'Fixnum'.constantize
    humanize = 'user_id'.humanize
    foreign_key = 'Employee'.foreign_key
  end

end


#can't be used in cycle: try,

