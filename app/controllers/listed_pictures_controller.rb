class ListedPicturesController < ApplicationController
  # GET /listed_pictures
  # GET /listed_pictures.json
  def index
    @listed_pictures = ListedPicture.all

    respond_to do |format|
      format.html
      format.json { render json: @listed_pictures }
    end
  end

  # GET /listed_pictures/1
  # GET /listed_pictures/1.json
  def show
    @listed_picture = ListedPicture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @listed_picture }
    end
  end

  # GET /listed_pictures/new
  # GET /listed_pictures/new.json
  def new
    @listed_picture = ListedPicture.new params[:listed_picture]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @listed_picture }
    end
  end

  # GET /listed_pictures/1/edit
  def edit
    @listed_picture = ListedPicture.find(params[:id])
  end

  # POST /listed_pictures
  # POST /listed_pictures.json
  def create
    @listed_picture = ListedPicture.new(params[:listed_picture])
    @list = @listed_picture.list

    respond_to do |format|
      if @listed_picture.save
        format.js
        format.html { redirect_to @listed_picture, notice: 'Listed picture was successfully created.' }
        format.json { render json: @listed_picture, status: :created, location: @listed_picture }
      else
        format.html { render action: "new" }
        format.json { render json: @listed_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /listed_pictures/1
  # PUT /listed_pictures/1.json
  def update
    @listed_picture = ListedPicture.find(params[:id])

    respond_to do |format|
      if @listed_picture.update_attributes(params[:listed_picture])
        format.html { redirect_to @listed_picture, notice: 'Listed picture was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @listed_picture.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def move_up
    @listed_picture = ListedPicture.find(params[:id])
    @listed_picture.move_higher
    redirect_to @listed_picture.list
  end
  
  def move_down
    @listed_picture = ListedPicture.find(params[:id])
    @listed_picture.move_lower
    redirect_to @listed_picture.list
  end

  # DELETE /listed_pictures/1
  # DELETE /listed_pictures/1.json
  def destroy
    @listed_picture = ListedPicture.find(params[:id])
    @listed_picture.destroy

    respond_to do |format|
      format.html { redirect_to listed_pictures_url }
      format.json { head :ok }
    end
  end
end
