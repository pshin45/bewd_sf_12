class UsersController < ApplicationController
  def show
    @movies = User.find(params[:id]).movies
end
