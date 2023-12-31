class ProductsController < ApplicationController
  def index 
    @products = Product.all
  end

  def sort
    @products = case params['sort_by']
                when 'category'
                  Product.where(category: Category.first)
                when 'price_high'
                  Product.order(price: :desc)
                when 'price_low'
                  Product.order(price: :desc).reverse
                else
                  Product.all
                end
  end

  def search
    @products = case params["search"]
    when /\d+/
      Product.where(category_id: params["search"].to_i)  
    else
      Product.where(name: params["search"])
    end
  end

  def search_by_city
    @products = Product.where(city: params["city"])
  end

  def search_for_city_category
    @products = Product.where(city: params["city"], category_id: params["category_id"].to_i)
  end

end
