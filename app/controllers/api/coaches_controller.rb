class Api::CoachesController < ApplicationController
  def index
    @message = "hello"
    render "index.json.jb"
  end
end
