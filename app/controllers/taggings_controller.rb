class TaggingsController < ApplicationController
  # GET /taggings
  # GET /taggings.json
  def index
    @taggings = Tagging.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taggings }
    end
  end

  # GET /taggings/1
  # GET /taggings/1.json
  def show
    @tagging = Tagging.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tagging }
    end
  end

  # GET /taggings/new
  # GET /taggings/new.json
  def new
    @tagging = Tagging.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tagging }
    end
  end

  # GET /taggings/1/edit
  def edit
    @tagging = Tagging.find(params[:id])
  end

  # POST /taggings
  # POST /taggings.json
  def create
    params[:tag_names].split(',').each do |name|
      @tag = Tag.find_or_create_by_name name.strip
      @tagging = Tagging.new(params[:tagging])
      @tagging.tag = @tag
      @tags_saved = @tagging.save
    end
    
    respond_to do |format|
      if @tags_saved
        format.html { redirect_to @tagging.taggable, notice: 'Tagged.' }
        format.json { render json: @tagging, status: :created, location: @tagging }
      else
        format.html { render action: "new" }
        format.json { render json: @tagging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taggings/1
  # DELETE /taggings/1.json
  def destroy
    @tagging = Tagging.find(params[:id])
    @tagging.destroy

    respond_to do |format|
      format.html { redirect_to taggings_url }
      format.json { head :ok }
    end
  end
end
