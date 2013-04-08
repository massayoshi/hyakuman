class ProductlinesController < ApplicationController
  # GET /productlines
  # GET /productlines.json
  def index
    @productlines = Productline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productlines }
    end
  end

  # GET /productlines/1
  # GET /productlines/1.json
  def show
    @productline = Productline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @productline }
    end
  end

  # GET /productlines/new
  # GET /productlines/new.json
  def new
    @productline = Productline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @productline }
    end
  end

  # GET /productlines/1/edit
  def edit
    @productline = Productline.find(params[:id])
  end

  # POST /productlines
  # POST /productlines.json
  def create
    @productline = Productline.new(params[:productline])

    respond_to do |format|
      if @productline.save
        format.html { redirect_to @productline, notice: 'Productline was successfully created.' }
        format.json { render json: @productline, status: :created, location: @productline }
      else
        format.html { render action: "new" }
        format.json { render json: @productline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /productlines/1
  # PUT /productlines/1.json
  def update
    @productline = Productline.find(params[:id])

    respond_to do |format|
      if @productline.update_attributes(params[:productline])
        format.html { redirect_to @productline, notice: 'Productline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @productline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productlines/1
  # DELETE /productlines/1.json
  def destroy
    @productline = Productline.find(params[:id])
    @productline.destroy

    respond_to do |format|
      format.html { redirect_to productlines_url }
      format.json { head :no_content }
    end
  end
end
