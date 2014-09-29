class WelcomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show_table_distances
    params[:v_lat]
    params[:v_lng]
    render(text: Building.all.to_json)
  end

end
