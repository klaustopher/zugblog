class TrainLinesController < ApplicationController
  before_action :set_train_line, only: [:show, :edit, :update, :destroy]

  # GET /train_lines
  # GET /train_lines.json
  def index
    @train_lines = TrainLine.all
  end

  # GET /train_lines/1
  # GET /train_lines/1.json
  def show
  end

  # GET /train_lines/new
  def new
    @train_line = TrainLine.new
  end

  # GET /train_lines/1/edit
  def edit
  end

  # POST /train_lines
  # POST /train_lines.json
  def create
    @train_line = TrainLine.new(train_line_params)

    respond_to do |format|
      if @train_line.save
        format.html { redirect_to @train_line, notice: 'Train line was successfully created.' }
        format.json { render :show, status: :created, location: @train_line }
      else
        format.html { render :new }
        format.json { render json: @train_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /train_lines/1
  # PATCH/PUT /train_lines/1.json
  def update
    respond_to do |format|
      if @train_line.update(train_line_params)
        format.html { redirect_to @train_line, notice: 'Train line was successfully updated.' }
        format.json { render :show, status: :ok, location: @train_line }
      else
        format.html { render :edit }
        format.json { render json: @train_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_lines/1
  # DELETE /train_lines/1.json
  def destroy
    @train_line.destroy
    respond_to do |format|
      format.html { redirect_to train_lines_url, notice: 'Train line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_line
      @train_line = TrainLine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def train_line_params
      params.require(:train_line).permit(:name, :vzg_number, :alt_names, :osm_id, :line)
    end
end
