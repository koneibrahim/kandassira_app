require 'test_helper'

class ContenuAchasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contenu_acha = contenu_achas(:one)
  end

  test "should get index" do
    get contenu_achas_url
    assert_response :success
  end

  test "should get new" do
    get new_contenu_acha_url
    assert_response :success
  end

  test "should create contenu_acha" do
    assert_difference('ContenuAcha.count') do
      post contenu_achas_url, params: { contenu_acha: { achat_id: @contenu_acha.achat_id, montant: @contenu_acha.montant, nom_pro: @contenu_acha.nom_pro, produit_id: @contenu_acha.produit_id, qte_pro: @contenu_acha.qte_pro, type_pro: @contenu_acha.type_pro } }
    end

    assert_redirected_to contenu_acha_url(ContenuAcha.last)
  end

  test "should show contenu_acha" do
    get contenu_acha_url(@contenu_acha)
    assert_response :success
  end

  test "should get edit" do
    get edit_contenu_acha_url(@contenu_acha)
    assert_response :success
  end

  test "should update contenu_acha" do
    patch contenu_acha_url(@contenu_acha), params: { contenu_acha: { achat_id: @contenu_acha.achat_id, montant: @contenu_acha.montant, nom_pro: @contenu_acha.nom_pro, produit_id: @contenu_acha.produit_id, qte_pro: @contenu_acha.qte_pro, type_pro: @contenu_acha.type_pro } }
    assert_redirected_to contenu_acha_url(@contenu_acha)
  end

  test "should destroy contenu_acha" do
    assert_difference('ContenuAcha.count', -1) do
      delete contenu_acha_url(@contenu_acha)
    end

    assert_redirected_to contenu_achas_url
  end
end
