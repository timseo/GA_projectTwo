class PagesController < ApplicationController

  before_action :authorize, only: [:secret, :edit]

  def secret
  end
end
