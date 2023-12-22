# frozen_string_literal: true

class ProductListComponent < ViewComponent::Base
  def initialize(products)
    @products = products
  end
end
