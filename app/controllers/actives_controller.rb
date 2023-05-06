class ActivesController < ApplicationController
  before_action :set_active, only: %i[ show edit update destroy ]

  # GET /actives or /actives.json
  def index
    @actives = Active.all
  end

  # GET /actives/1 or /actives/1.json
  def show
  end

  # GET /actives/new
  def new
    @active = Active.new
  end

  # GET /actives/1/edit
  def edit
  end

  # POST /actives or /actives.json
  def create
    @active = Active.new(active_params)

    respond_to do |format|
      if @active.save
        format.html { redirect_to active_url(@active), notice: "Active was successfully created." }
        format.json { render :show, status: :created, location: @active }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @active.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actives/1 or /actives/1.json
  def update
    respond_to do |format|
      if @active.update(active_params)
        format.html { redirect_to active_url(@active), notice: "Active was successfully updated." }
        format.json { render :show, status: :ok, location: @active }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @active.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actives/1 or /actives/1.json
  def destroy
    @active.destroy

    respond_to do |format|
      format.html { redirect_to actives_url, notice: "Active was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active
      @active = Active.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def active_params
      params.require(:active).permit(:name, :price)
    end
end
