class ContactsController < ApplicationController
  def show
    content_for :contacts_active, true
    content_for :title, 'Contacts'
  end
end
