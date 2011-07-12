class BoardsController < ApplicationController
  # GET /boards
  # GET /boards.xml
  def index
    @boards = Board.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boards }
    end
  end

  # GET /boards/1
  # GET /boards/1.xml
  def show
    @board = Board.find(params[:id])
    @posts = @board.posts
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @board }
    end
  end

  # GET /boards/new
  # GET /boards/new.xml

  # GET /boards/1/edit

  # POST /boards
  # POST /boards.xml

  # PUT /boards/1
  # PUT /boards/1.xml

  # DELETE /boards/1
  # DELETE /boards/1.xml
end
