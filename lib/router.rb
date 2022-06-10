require 'controller'


class Router

  def initialize
    @controller =  Controller.new
  end 

  def perform 
    @controller.welcome_script
  end

end