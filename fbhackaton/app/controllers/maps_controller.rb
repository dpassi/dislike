class MapsController < ApplicationController

  def show
    @topics = Topic.all
    @topics_json = Topic.all.to_json.to_s
  end

  def index
  end


end
