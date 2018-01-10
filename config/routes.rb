Rails.application.routes.draw do
  get 'pictures' => 'pictures#index'

end

class PicturesController < ApplicationController
  def index
  end
end
