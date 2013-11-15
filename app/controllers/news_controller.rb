class NewsController < ApplicationController
  before_action :set_news, only: [:show]

  # GET /news
  # GET /news.json
  def index
    @news = New.all
  end

  # GET /news/1
  # GET /news/1.json
  def show
  end

  # GET /news/new
  # GET /news/1/edit

  # POST /news
  # POST /news.json

  # PATCH/PUT /news/1
  # PATCH/PUT /news/1.json

  # DELETE /news/1

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = New.find(params[:id])
    end
end
