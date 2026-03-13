class CommandConfigsController < ApplicationController
  before_action :set_command_config, only: %i[ show edit update destroy ]

  # GET /command_configs or /command_configs.json
  def index
    @command_configs = CommandConfig.all.order(priority: :asc)
  end

  # GET /command_configs/1 or /command_configs/1.json
  def show
  end

  # GET /command_configs/new
  def new
    @command_config = CommandConfig.new
  end

  # GET /command_configs/1/edit
  def edit
  end

  # POST /command_configs or /command_configs.json
  def create
    @command_config = CommandConfig.new(command_config_params)

    respond_to do |format|
      if @command_config.save
        format.html { redirect_to @command_config, notice: "Command config was successfully created." }
        format.json { render :show, status: :created, location: @command_config }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @command_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /command_configs/1 or /command_configs/1.json
  def update
    respond_to do |format|
      if @command_config.update(command_config_params)
        format.html { redirect_to @command_config, notice: "Command config was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @command_config }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @command_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /command_configs/1 or /command_configs/1.json
  def destroy
    @command_config.destroy!

    respond_to do |format|
      format.html { redirect_to command_configs_path, notice: "Command config was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_command_config
      @command_config = CommandConfig.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def command_config_params
      params.expect(command_config: [ :name, :args, :notes, :priority, :created_at ])
    end
end
