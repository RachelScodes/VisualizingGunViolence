class WelcomeController < ApplicationController

   def index
      @data = Statistic.all.order(date: :desc).limit(5)
   end

end
