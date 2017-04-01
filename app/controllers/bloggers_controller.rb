class BloggersController < ApplicationController
  before_action :authenticate_blogger!, except: [:index, :show]

  layout "bloggers"

  def index
  end
end
