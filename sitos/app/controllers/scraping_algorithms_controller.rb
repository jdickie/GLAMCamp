class ScrapingAlgorithmsController < ApplicationController
  # GET /scraping_algorithms
  # GET /scraping_algorithms.json
  def index
    @scraping_algorithms = ScrapingAlgorithm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scraping_algorithms }
    end
  end

  # GET /scraping_algorithms/1
  # GET /scraping_algorithms/1.json
  def show
    @scraping_algorithm = ScrapingAlgorithm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scraping_algorithm }
    end
  end

  # GET /scraping_algorithms/new
  # GET /scraping_algorithms/new.json
  def new
    @scraping_algorithm = ScrapingAlgorithm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scraping_algorithm }
    end
  end

  # GET /scraping_algorithms/1/edit
  def edit
    @scraping_algorithm = ScrapingAlgorithm.find(params[:id])
  end

  # POST /scraping_algorithms
  # POST /scraping_algorithms.json
  def create
    @scraping_algorithm = ScrapingAlgorithm.new(params[:scraping_algorithm])

    respond_to do |format|
      if @scraping_algorithm.save
        format.html { redirect_to @scraping_algorithm, notice: 'Scraping algorithm was successfully created.' }
        format.json { render json: @scraping_algorithm, status: :created, location: @scraping_algorithm }
      else
        format.html { render action: "new" }
        format.json { render json: @scraping_algorithm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scraping_algorithms/1
  # PUT /scraping_algorithms/1.json
  def update
    @scraping_algorithm = ScrapingAlgorithm.find(params[:id])

    respond_to do |format|
      if @scraping_algorithm.update_attributes(params[:scraping_algorithm])
        format.html { redirect_to @scraping_algorithm, notice: 'Scraping algorithm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scraping_algorithm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scraping_algorithms/1
  # DELETE /scraping_algorithms/1.json
  def destroy
    @scraping_algorithm = ScrapingAlgorithm.find(params[:id])
    @scraping_algorithm.destroy

    respond_to do |format|
      format.html { redirect_to scraping_algorithms_url }
      format.json { head :no_content }
    end
  end
end
