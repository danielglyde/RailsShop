class BasketController < ApplicationController

  #find if this product already exists in the basket
  #if it does then show the correct count
  def index
    @baskets = Basket.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @baskets }
    end
  end

  def update
    @basket = Basket.find(params[:id])
    @basket.update_attributes(params[:basket])
    redirect_to :action => 'index'

  end

  def delete
    @basket = Basket.find(params[:id])
    @basket.destroy
    redirect_to :action => 'index'
  end

  def add_to_basket
    #how many of this product is in the basket?
    @product_id = params[:id]
    @basket = Basket.find_by_product_id(@product_id)

    if !@basket.nil?
      @count = @basket.count + 1
      @basket.update_attribute(:count, @count)
    else
      @basket = Basket.new
      @basket.product_id = @product_id
      @basket.count = 1
      @basket.save
    end
    
    redirect_to :controller => 'category', :action => 'index'

  end

end
