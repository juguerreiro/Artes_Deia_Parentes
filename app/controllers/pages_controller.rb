class PagesController < ApplicationController
  # do not need to be log in in the home page
  skip_before_action :authenticate_user!, only: :home

  def home
  end
end
