class WelcomeController < ApplicationController
  def index
    @news = New.all.order('id DESC').limit(4)
  end
end
