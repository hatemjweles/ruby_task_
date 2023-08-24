class InvsdataController < ApplicationController
  before_action :set_invsdatum, only: %i[ show edit update destroy ]

  # GET /invsdata or /invsdata.json
  def index
    @invsdata = Invsdatum.all
  end

  # GET /invsdata/1 or /invsdata/1.json
  def show
  end

  # GET /invsdata/new
  def new
    @invsdatum = Invsdatum.new
  end

  # GET /invsdata/1/edit
  def edit
  end

  # POST /invsdata or /invsdata.json
  def create
    @invsdatum = Invsdatum.new(invsdatum_params)
    @invsdatum.inverse_string=@invsdatum.original_string.reverse

    respond_to do |format|

      if @invsdatum.save
        format.html { redirect_to invsdatum_url(@invsdatum), notice: "Invsdatum was successfully created." }
        format.json { render :show, status: :created, location: @invsdatum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @invsdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invsdata/1 or /invsdata/1.json
  def update
    respond_to do |format|
      if @invsdatum.update(invsdatum_params)
        format.html { redirect_to invsdatum_url(@invsdatum), notice: "Invsdatum was successfully updated." }
        format.json { render :show, status: :ok, location: @invsdatum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @invsdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invsdata/1 or /invsdata/1.json
  def destroy
    @invsdatum.destroy

    respond_to do |format|
      format.html { redirect_to invsdata_url, notice: "Invsdatum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invsdatum
      @invsdatum = Invsdatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invsdatum_params
      params.require(:invsdatum).permit(:original_string, :string, :inverse_string, :string)
    end
end
