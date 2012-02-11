class CitableSitesController < ApplicationController
  # GET /citable_sites
  # GET /citable_sites.json
  def index
    @citable_sites = CitableSite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @citable_sites }
    end
  end

  # GET /citable_sites/1
  # GET /citable_sites/1.json
  def show
    @citable_site = CitableSite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @citable_site }
    end
  end

  # GET /citable_sites/new
  # GET /citable_sites/new.json
  def new
    @citable_site = CitableSite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @citable_site }
    end
  end

  # GET /citable_sites/1/edit
  def edit
    @citable_site = CitableSite.find(params[:id])
  end

  # POST /citable_sites
  # POST /citable_sites.json
  def create
    @citable_site = CitableSite.new(params[:citable_site])

    respond_to do |format|
      if @citable_site.save
        format.html { redirect_to @citable_site, notice: 'Citable site was successfully created.' }
        format.json { render json: @citable_site, status: :created, location: @citable_site }
      else
        format.html { render action: "new" }
        format.json { render json: @citable_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /citable_sites/1
  # PUT /citable_sites/1.json
  def update
    @citable_site = CitableSite.find(params[:id])

    respond_to do |format|
      if @citable_site.update_attributes(params[:citable_site])
        format.html { redirect_to @citable_site, notice: 'Citable site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @citable_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citable_sites/1
  # DELETE /citable_sites/1.json
  def destroy
    @citable_site = CitableSite.find(params[:id])
    @citable_site.destroy

    respond_to do |format|
      format.html { redirect_to citable_sites_url }
      format.json { head :no_content }
    end
  end
end
