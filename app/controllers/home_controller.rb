class HomeController < ApplicationController
  def index
    @error = "Symbol not exist, please try again"
    if params[:id] == ""
      @nothing = "Hey, don't forget to enter a symbol"
    elsif 
      if params[:id]
        begin
          @stock =  StockQuote::Stock.quote(params[:id])
        rescue
          @error
        end


      end
    end
  end
  
  def about

  end
end
