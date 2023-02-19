class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    puts "hello"
    puts "world"
    puts "hopefully"
    puts "rubocop"
    puts "doesn't"
    puts "like"
    puts "this"
    puts "and this"
  end
end
