class BloggersController < ApplicationController
  before_action :authenticate_blogger!

  layout "bloggers"

  def index
  end
end
