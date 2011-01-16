class ProductController < ApplicationController
  #http://localhost:8080/RailsShop/product/show_by_category/1

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product}
    end
  end

end
