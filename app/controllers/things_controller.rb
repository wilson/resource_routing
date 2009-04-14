class ThingsController < ApplicationController
  def index
    render :text => "INDEX"
  end

  def create
    render :text => "CREATE"
  end

  def destroy
    render :text => "DESTROY"
  end
end
