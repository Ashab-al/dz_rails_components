module ProductsHelper
  def list_of_categories
    category_list = [] 
    Category.all.each do |category|
      category_list << ["#{category.name}", category.id]
    end
    category_list
  end
end
