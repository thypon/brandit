class ProductsController < ApplicationController
  def index
    if id = params[:product_style_id]
      product_style = ProductStyle.find(id)
      @previous = product_style
      content_for :title, product_style.name
      @products = product_style.products
    elsif id = params[:product_type_id]
      product_type = ProductType.find(id)
      @previous = product_type
      content_for :title, product_type.name
      @products = product_type.products
    elsif id = params[:designer_id]
      designer = Designer.find(id)
      @previous = designer
      content_for :title, designer.name
      @products = designer.products
    elsif id = params[:shop_id]
      shop = Shop.find(id)
      @previous = shop
      content_for :title, shop.name
      @products = shop.products
    elsif id = params[:showroom_id]
      showroom = Showroom.find(id)
      @previous = showroom
      content_for :title, showroom.name
      @products = showroom.products
    elsif id = params[:service_id]
      service = Service.find(id)
      @previous = service
      content_for :title, service.name
      @products = service.products
    else
      content_for :title, 'Best Products'
      @products = Product.best
      content_for :products_active, true
    end
  end

  def show
    if params[:product_style_id] || params[:service_id]
      @pattern = :i
    elsif params[:product_type_id]
      @pattern = :igt
    else
      @pattern = :gt
    end

    @product = Product.find(params[:id])
    content_for :title, @product.name
  end

  def gallery
    @product = Product.find(id)
    content_for :title, "#{@product.name} - Gallery"
    @photos = @product.product_gallery_photos
  end

  def up
    if id = params[:product_style_id]
      product_style = ProductStyle.find(id)
      if params[:id]
        redirect_to product_style_products_path(product_style)
      else
        redirect_to product_style
      end
    elsif id = params[:product_types_id]
      product_type = ProductType.find(id)
      if params[:id]
        redirect_to product_type_products_path(product_type)
      else
        redirect_to product_type
      end
    elsif id = params[:designer_id]
      designer = Designer.find(id)
      if params[:id]
        redirect_to designer_products_path(designer)
      else
        redirect_to designer
      end
    elsif id = params[:shop_id]
      shop = Shop.find(id)
      if params[:id]
        redirect_to shop_products_path(shop)
      else
        redirect_to shop
      end
    elsif id = params[:showroom_id]
      showroom = Showroom.find(id)
      if params[:id]
        redirect_to showroom_products_path(showroom)
      else
        redirect_to showroom
      end
    elsif id = params[:service_id]
      service = Service.find(id)
      if params[:id]
        redirect_to service_products_path(service)
      else
        redirect_to service
      end
    end
  end

  def next
    if id = params[:product_style_id]
      product_style = ProductStyle.find(id)
      product = Product.find(params[:id])
      next_index = product_style.products.index(product) + 1
      redirect_to product_style_product_path(product_style, product_style.products[next_index])
    elsif id = params[:product_types_id]
      product_type = ProductType.find(id)
      product = Product.find(params[:id])
      next_index = product_type.products.index(product) + 1
      redirect_to product_type_product_path(product_type, product_type.products[next_index])
    elsif id = params[:designer_id]
      designer = Designer.find(id)
      product = Product.find(params[:id])
      next_index = designer.products.index(product) + 1
      redirect_to designer_product_path(designer, designer.products[next_index])
    elsif id = params[:shop_id]
      shop = Shop.find(id)
      product = Product.find(params[:id])
      next_index = shop.products.index(product) + 1
      redirect_to shop_product_path(shop, shop.products[next_index])
    elsif id = params[:showroom_id]
      showroom = Showroom.find(id)
      product = Product.find(params[:id])
      next_index = showroom.products.index(product) + 1
      redirect_to showroom_product_path(showroom, showroom.products[next_index])
    elsif id = params[:service_id]
      service = Service.find(id)
      product = Product.find(params[:id])
      next_index = service.products.index(product) + 1
      redirect_to showroom_product_path(service, service.products[next_index])
    end
  end

  def previous
    if id = params[:product_style_id]
      product_style = ProductStyle.find(id)
      product = Product.find(params[:id])
      previous_index = product_style.products.index(product) - 1
      redirect_to product_style_product_path(product_style, product_style.products[previous_index])
    elsif id = params[:product_types_id]
      product_type = ProductType.find(id)
      product = Product.find(params[:id])
      previous_index = product_type.products.index(product) - 1
      redirect_to product_type_product_path(product_type, product_type.products[previous_index])
    elsif id = params[:designer_id]
      designer = Designer.find(id)
      product = Product.find(params[:id])
      previous_index = designer.products.index(product) - 1
      redirect_to designer_product_path(designer, designer.products[previous_index])
    elsif id = params[:shop_id]
      shop = Shop.find(id)
      product = Product.find(params[:id])
      previous_index = shop.products.index(product) - 1
      redirect_to shop_product_path(shop, shop.products[previous_index])
    elsif id = params[:showroom_id]
      showroom = Showroom.find(id)
      product = Product.find(params[:id])
      previous_index = showroom.products.index(product) - 1
      redirect_to showroom_product_path(showroom, showroom.products[previous_index])
    elsif id = params[:service_id]
      service = Service.find(id)
      product = Product.find(params[:id])
      previous_index = service.products.index(product) - 1
      redirect_to showroom_product_path(service, service.products[previous_index])
    end
  end
end
