class WelcomeController < ApplicationController

    def hello
        @count = params[:count].to_i
        @count = 1 if @count.zero?
        @time = Time.new.to_s
    end

end