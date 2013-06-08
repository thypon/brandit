class ContactsController < ApplicationController
  def show
    content_for :contacts_active, true
  end
end
