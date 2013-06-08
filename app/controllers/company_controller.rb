class CompanyController < ApplicationController
  def show
    content_for :company_active, true
  end

  def show_more
  end
end
