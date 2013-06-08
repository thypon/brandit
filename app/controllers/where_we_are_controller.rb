class WhereWeAreController < ApplicationController
  def show
    content_for :where_we_are_active, true
  end
end
