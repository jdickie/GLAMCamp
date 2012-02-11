class ScrapingElementsController < ApplicationController
  # GET /scraping_elements
  # GET /scraping_elements.json
  def index
    @scraping_elements = ScrapingElement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scraping_elements }
    end
  end

  # GET /scraping_elements/1
  # GET /scraping_elements/1.json
  def show
    @scraping_element = ScrapingElement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scraping_element }
    end
  end

  # GET /scraping_elements/new
  # GET /scraping_elements/new.json
  def new
    @scraping_element = ScrapingElement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scraping_element }
    end
  end

  # GET /scraping_elements/1/edit
  def edit
    @scraping_element = ScrapingElement.find(params[:id])
  end

  # POST /scraping_elements
  # POST /scraping_elements.json
  def create
    @scraping_element = ScrapingElement.new(params[:scraping_element])

    respond_to do |format|
      if @scraping_element.save
        format.html { redirect_to @scraping_element, notice: 'Scraping element was successfully created.' }
        format.json { render json: @scraping_element, status: :created, location: @scraping_element }
      else
        format.html { render action: "new" }
        format.json { render json: @scraping_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scraping_elements/1
  # PUT /scraping_elements/1.json
  def update
    @scraping_element = ScrapingElement.find(params[:id])

    respond_to do |format|
      if @scraping_element.update_attributes(params[:scraping_element])
        format.html { redirect_to @scraping_element, notice: 'Scraping element was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scraping_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scraping_elements/1
  # DELETE /scraping_elements/1.json
  def destroy
    @scraping_element = ScrapingElement.find(params[:id])
    @scraping_element.destroy

    respond_to do |format|
      format.html { redirect_to scraping_elements_url }
      format.json { head :no_content }
    end
  end
end
