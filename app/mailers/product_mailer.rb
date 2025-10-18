class ProductMailer < ApplicationMailer
  include Rails.application.routes.url_helpers
  default_url_options[:host] = "localhost:300"

  def in_stock
    @product = params[:product]
    @subscriber = params[:subscriber]
    mail to: @subscriber.email, subject: "#{@product.name} is back in stock!"
  end
end
