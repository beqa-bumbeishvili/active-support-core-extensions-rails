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
    @calculations[:sub_classes] = Employee.subclasses
    @calculations[:descendants] = Employee.descendants
    @calculations[:remove] =  params[:remove].remove(/[aeiou]/)
    @calculations[:squish] =  params[:squish].squish
    @calculations[:truncate] =  params[:truncate].truncate(10, separator: ' ')
    @calculations[:truncate_words] =  params[:truncate_words].truncate_words(4)
    @calculations[:inquiry] =  params[:inquiry].inquiry.send(params[:inquiry]+'?')
    @calculations[:starts_with] =  params[:starts_with].starts_with?('a')
    @calculations[:position_at] =  params[:position_at].at(4)
    @calculations[:position_from] =  params[:position_from].from(6)
    @calculations[:position_to] =  params[:position_to].to(6)
    @calculations[:first_letters] =  params[:first_letters].first(5)
    @calculations[:last_letters] =  params[:last_letters].last(5)
    @calculations[:pluralize] =  params[:pluralize].pluralize
    @calculations[:singularize] =  params[:singularize].singularize
    @calculations[:camelize] =  params[:camelize].camelize
    @calculations[:underscore] =  params[:underscore].underscore
    @calculations[:titleize] =  params[:titleize].titleize
    @calculations[:dasherize] =  params[:dasherize].dasherize
    @calculations[:parameterize] =  params[:parameterize].parameterize
    @calculations[:tableize] =  params[:tableize].tableize
    @calculations[:classify] =  params[:classify].classify
    @calculations[:constantize] =  params[:constantize].constantize
    @calculations[:humanize] =  params[:humanize].humanize
    @calculations[:foreign_key] =  params[:foreign_key].foreign_key


  end

end

