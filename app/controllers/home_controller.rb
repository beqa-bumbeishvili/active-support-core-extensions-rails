class HomeController < ApplicationController
  # require '../../app/custom_classes/user'
  # require '../../app/custom_classes/sub_user'
  def index

  end

  def extensions
    @conditions_array = []

    params.except(:action, :controller).each do |parameter|
      @conditions_array << {value: params[parameter], function: parameter, condition: params[parameter].send(parameter) }
    end

  end

  def custom_calculations
    @calculations = {}

    @calculations[:using_next] = params[:next].try(:next)
    @calculations[:employee_name_and_age] = Employee.first.try{ |emp| "#{emp.name} #{emp.age}" }
    @calculations[:in_range] = params[:number].to_i.in?(20..50)
    @calculations[:instance_values] = Employee.new.instance_values.to_s.truncate_words(5)
    @calculations[:instance_variable_names] = Employee.new.instance_variable_names
     # name = SubUser.name
    # user = User.new('user')
    # user.name = 'user1'
    # sub_classes = User.subclasses
    # descendants = SubUser.descendants
    # remove =  'Ruby On Rails'.remove(/Ruby ON /)
    # squish =  '   some    indented string  '.squish
    # truncate =  'dsasds ds sa s sd saassadds ds sad sa sda'.truncate(10, separator: ' ')
    # truncate_words =  'quick brows fox jumps over lazy dog'.truncate_words(4)
    # inquiry = 'random_string'.inquiry.random_string?
    # starts_with = 'car'.starts_with?('c')
    # position_at = 'random_string'.at(4)
    # position_from = 'random_string'.from(6)
    # position_to = 'random_string'.to(5)
    # first_letters = 'some_string'.first(4)
    # last_letters = 'some_string'.last(7)
    # pluralize = 'apple'.pluralize
    # singularize = 'people'.singularize
    # camelize = 'admin_panel'.camelize
    # underscore ='RubyOnRails'.underscore
    # titleize = 'game_of_thrones'.titleize
    # dasherize = 'name_and_lastname'.dasherize
    # parameterize = 'Will Smith'.parameterize
    # tableize = 'NcspElement'.tableize
    # classify = 'contact_info'.classify
    # constantize = 'Fixnum'.constantize
    # humanize = 'user_id'.humanize
    # foreign_key = 'Employee'.foreign_key
    'debug'
  end

end

