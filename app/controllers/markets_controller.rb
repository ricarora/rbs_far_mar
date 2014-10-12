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

  # def search
  #   raise params.inspect
  #   @markets = Market.search(params[:search])
  #   redirect_to "/markets/lookup"
  # end

  def lookup
    #srch = params[:params][:search]
    srch = params[:search]
    if srch
      @markets = Market.all.where('lower(name) LIKE ?', "%#{srch.downcase}%")
    else
      @markets = index
    end
  end

  def edit
    @market = Market.find(params[:id])
  end

  def update
    @market = Market.find(params[:id])
    if @market.update(post_params)
      redirect_to market_sessions_path
    else
      render :edit
    end
  end

  private #this prevents the routes from calling a method. Can only be used by self

  def post_params #rails does this for you
    params.require(:market).permit(:name,:address,:city,:county,:state,:zip)
  end

  def guest
    @markets = Market.all
  end

  def ven
    @market = Market.find(params[:id])
  end
end
