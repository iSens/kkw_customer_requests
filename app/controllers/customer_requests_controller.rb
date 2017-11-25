class CustomerRequestsController < ApplicationController
  before_action :set_customer_request, only: [:show, :edit, :update, :destroy]

  # GET /customer_requests
  # GET /customer_requests.json
  def index
    @customer_requests = CustomerRequest.all
  end

  # GET /customer_requests/1
  # GET /customer_requests/1.json
  def show
  end

  # GET /customer_requests/new
  def new
    @customer_request = CustomerRequest.new
  end

  # GET /customer_requests/1/edit
  def edit
  end

  # POST /customer_requests
  # POST /customer_requests.json
  def create
    @customer_request = CustomerRequest.new(customer_request_params)

    respond_to do |format|
      if @customer_request.save
        format.html { redirect_to @customer_request, notice: 'Customer request was successfully created.' }
        format.json { render :show, status: :created, location: @customer_request }
      else
        format.html { render :new }
        format.json { render json: @customer_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_requests/1
  # PATCH/PUT /customer_requests/1.json
  def update
    respond_to do |format|
      if @customer_request.update(customer_request_params)
        format.html { redirect_to @customer_request, notice: 'Customer request was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_request }
      else
        format.html { render :edit }
        format.json { render json: @customer_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_requests/1
  # DELETE /customer_requests/1.json
  def destroy
    @customer_request.destroy
    respond_to do |format|
      format.html { redirect_to customer_requests_url, notice: 'Customer request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_request
      @customer_request = CustomerRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_request_params
      params.require(:customer_request).permit(:customer_name, :customer_phone, :brand, :notes, :status, :deposit)
    end
end
