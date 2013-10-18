class VaultsController < ApplicationController
  skip_around_filter :scope_current_vault

  before_action :set_vault, only: [:show, :edit, :update, :destroy]

  # GET /vaults
  # GET /vaults.json
  def index
    @vaults = Vault.all
  end

  # GET /vaults/1
  # GET /vaults/1.json
  def show
  end

  # GET /vaults/new
  def new
    @vault = Vault.new
  end

  # GET /vaults/1/edit
  def edit
  end

  # POST /vaults
  # POST /vaults.json
  def create
    @vault = Vault.new(vault_params)

    respond_to do |format|
      if @vault.save
        format.html { redirect_to @vault, notice: 'Vault was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vault }
      else
        format.html { render action: 'new' }
        format.json { render json: @vault.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vaults/1
  # PATCH/PUT /vaults/1.json
  def update
    respond_to do |format|
      if @vault.update(vault_params)
        format.html { redirect_to @vault, notice: 'Vault was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vault.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaults/1
  # DELETE /vaults/1.json
  def destroy
    @vault.destroy
    respond_to do |format|
      format.html { redirect_to vaults_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vault
      @vault = Vault.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vault_params
      params.require(:vault).permit(:name, :subdomain)
    end
end
