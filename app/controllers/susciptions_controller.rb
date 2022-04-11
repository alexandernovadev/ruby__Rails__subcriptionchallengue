class SusciptionsController < ApplicationController
  before_action :set_susciption, only: %i[ show edit update destroy ]

  # GET /susciptions or /susciptions.json
  def index
    @susciption = Susciption.new
  end

  # GET /susciptions/1 or /susciptions/1.json
  def show

  end

  # GET /susciptions/new
  def new
    @susciption = Susciption.new
  end

  # GET /susciptions/1/edit
  def edit
  end

  # POST /susciptions or /susciptions.json
  def create
    @susciption = Susciption.new(susciption_params)


    respond_to do |format|
      if @susciption.save
        format.html { redirect_to susciption_url(@susciption), notice: "Susciption was successfully created." }
        format.json { render :index, status: :created, location: @susciption }
      else
        format.html { render :index, status: :unprocessable_entity }
        format.json { render json: @susciption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /susciptions/1 or /susciptions/1.json
  def update
    respond_to do |format|
      if @susciption.update(susciption_params)
        format.html { redirect_to susciption_url(@susciption), notice: "Susciption was successfully updated." }
        format.json { render :show, status: :ok, location: @susciption }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @susciption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /susciptions/1 or /susciptions/1.json
  def destroy
    @susciption.destroy

    respond_to do |format|
      format.html { redirect_to susciptions_url, notice: "Susciption was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_susciption
      @susciption = Susciption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def susciption_params
      params.require(:susciption).permit(:email, :isWomen, :isMen, :isChildren)
    end
end
