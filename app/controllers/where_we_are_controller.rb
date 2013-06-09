class WhereWeAreController < ApplicationController
  def show
    content_for :split, true
    content_for :where_we_are_active, true
    content_for :title, 'Where We Are?'
  end
end
