class ContenuVentesController < ApplicationController
  before_action :set_contenu_vente, only: [:show, :edit, :update, :destroy]

  # GET /contenu_ventes
  # GET /contenu_ventes.json
  def index
    @contenu_ventes = ContenuVente.all
  end

  # GET /contenu_ventes/1
  # GET /contenu_ventes/1.json
  def show
  end

  # GET /contenu_ventes/new
  def new
    @contenu_vente = ContenuVente.new
  end

  # GET /contenu_ventes/1/edit
  def edit
  end

  # POST /contenu_ventes
  # POST /contenu_ventes.json
  def create
    @contenu_vente = ContenuVente.new(contenu_vente_params)

    respond_to do |format|
      if @contenu_vente.save
        format.html { redirect_to @contenu_vente, notice: 'Contenu vente was successfully created.' }
        format.json { render :show, status: :created, location: @contenu_vente }
      else
        format.html { render :new }
        format.json { render json: @contenu_vente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contenu_ventes/1
  # PATCH/PUT /contenu_ventes/1.json
  def update
    respond_to do |format|
      if @contenu_vente.update(contenu_vente_params)
        format.html { redirect_to @contenu_vente, notice: 'Contenu vente was successfully updated.' }
        format.json { render :show, status: :ok, location: @contenu_vente }
      else
        format.html { render :edit }
        format.json { render json: @contenu_vente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contenu_ventes/1
  # DELETE /contenu_ventes/1.json
  def destroy
    @contenu_vente.destroy
    respond_to do |format|
      format.html { redirect_to contenu_ventes_url, notice: 'Contenu vente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contenu_vente
      @contenu_vente = ContenuVente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contenu_vente_params
      params.require(:contenu_vente).permit(:vente_id, :produit_id, :nom_pro, :type_pro, :qte_pro, :montant)
    end
end
