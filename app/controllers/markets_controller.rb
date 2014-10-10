class MarketsController < ApplicationController

  def index
    @markets = Market.all
  end

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(post_params)
    if @market.save
      redirect_to root_path
    else
      render :new  #this renders new.html.erb again
    end
  end

  # def delete
  #   Market.find(params[:id]).destroy
  #   redirect_to root_path
  # end

  def edit
    @market = Market.find(params[:id])
  end

  def update
    @market = Market.find(params[:id])
    if @market.update(post_params)
      redirect_to market_home_path
    else
      render :edit
    end
  end

  private #this prevents the routes from calling a method. Can only be used by self

  def post_params #rails does this for you
    params.require(:market).permit(:name,:address,:city,:county,:state,:zip)
  end
end
