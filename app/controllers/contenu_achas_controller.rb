class ContenuAchasController < ApplicationController
  before_action :set_contenu_acha, only: [:show, :edit, :update, :destroy]

  # GET /contenu_achas
  # GET /contenu_achas.json
  def index
    @contenu_achas = ContenuAcha.all
  end

  # GET /contenu_achas/1
  # GET /contenu_achas/1.json
  def show
  end

  # GET /contenu_achas/new
  def new
    @contenu_acha = ContenuAcha.new
  end

  # GET /contenu_achas/1/edit
  def edit
  end

  # POST /contenu_achas
  # POST /contenu_achas.json
  def create
    @contenu_acha = ContenuAcha.new(contenu_acha_params)

    respond_to do |format|
      if @contenu_acha.save
        format.html { redirect_to @contenu_acha, notice: 'Contenu acha was successfully created.' }
        format.json { render :show, status: :created, location: @contenu_acha }
      else
        format.html { render :new }
        format.json { render json: @contenu_acha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contenu_achas/1
  # PATCH/PUT /contenu_achas/1.json
  def update
    respond_to do |format|
      if @contenu_acha.update(contenu_acha_params)
        format.html { redirect_to @contenu_acha, notice: 'Contenu acha was successfully updated.' }
        format.json { render :show, status: :ok, location: @contenu_acha }
      else
        format.html { render :edit }
        format.json { render json: @contenu_acha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contenu_achas/1
  # DELETE /contenu_achas/1.json
  def destroy
    @contenu_acha.destroy
    respond_to do |format|
      format.html { redirect_to contenu_achas_url, notice: 'Contenu acha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contenu_acha
      @contenu_acha = ContenuAcha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contenu_acha_params
      params.require(:contenu_acha).permit(:nom_pro, :type_pro, :qte_pro, :achat_id, :montant, :produit_id)
    end
end
