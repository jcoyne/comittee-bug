class ResourcesController < ApplicationController
  def create
    render json: {}, status: :created
  end
end
