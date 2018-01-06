require 'test_helper'

class ContenuVentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contenu_vente = contenu_ventes(:one)
  end

  test "should get index" do
    get contenu_ventes_url
    assert_response :success
  end

  test "should get new" do
    get new_contenu_vente_url
    assert_response :success
  end

  test "should create contenu_vente" do
    assert_difference('ContenuVente.count') do
      post contenu_ventes_url, params: { contenu_vente: { montant: @contenu_vente.montant, nom_pro: @contenu_vente.nom_pro, produit_id: @contenu_vente.produit_id, qte_pro: @contenu_vente.qte_pro, type_pro: @contenu_vente.type_pro, vente_id: @contenu_vente.vente_id } }
    end

    assert_redirected_to contenu_vente_url(ContenuVente.last)
  end

  test "should show contenu_vente" do
    get contenu_vente_url(@contenu_vente)
    assert_response :success
  end

  test "should get edit" do
    get edit_contenu_vente_url(@contenu_vente)
    assert_response :success
  end

  test "should update contenu_vente" do
    patch contenu_vente_url(@contenu_vente), params: { contenu_vente: { montant: @contenu_vente.montant, nom_pro: @contenu_vente.nom_pro, produit_id: @contenu_vente.produit_id, qte_pro: @contenu_vente.qte_pro, type_pro: @contenu_vente.type_pro, vente_id: @contenu_vente.vente_id } }
    assert_redirected_to contenu_vente_url(@contenu_vente)
  end

  test "should destroy contenu_vente" do
    assert_difference('ContenuVente.count', -1) do
      delete contenu_vente_url(@contenu_vente)
    end

    assert_redirected_to contenu_ventes_url
  end
end
