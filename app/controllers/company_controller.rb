class CompanyController < ApplicationController
  def show
    content_for :company_active, true
    content_for :title, 'Company'
  end

  def show_more
  end
end
