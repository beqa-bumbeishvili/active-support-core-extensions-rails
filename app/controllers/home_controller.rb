class HomeController < ApplicationController

  def index

  end

  def extensions
    @conditions_array = []

    params.except(:action, :controller).each do |parameter|
      @conditions_array << {value: params[parameter], function: parameter, condition: params[parameter].send(parameter) }
    end
  end

end


