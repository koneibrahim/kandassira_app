require 'test_helper'

class FournisseursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fournisseur = fournisseurs(:one)
  end

  test "should get index" do
    get fournisseurs_url
    assert_response :success
  end

  test "should get new" do
    get new_fournisseur_url
    assert_response :success
  end

  test "should create fournisseur" do
    assert_difference('Fournisseur.count') do
      post fournisseurs_url, params: { fournisseur: { adresse_fo: @fournisseur.adresse_fo, company: @fournisseur.company, nom_fo: @fournisseur.nom_fo } }
    end

    assert_redirected_to fournisseur_url(Fournisseur.last)
  end

  test "should show fournisseur" do
    get fournisseur_url(@fournisseur)
    assert_response :success
  end

  test "should get edit" do
    get edit_fournisseur_url(@fournisseur)
    assert_response :success
  end

  test "should update fournisseur" do
    patch fournisseur_url(@fournisseur), params: { fournisseur: { adresse_fo: @fournisseur.adresse_fo, company: @fournisseur.company, nom_fo: @fournisseur.nom_fo } }
    assert_redirected_to fournisseur_url(@fournisseur)
  end

  test "should destroy fournisseur" do
    assert_difference('Fournisseur.count', -1) do
      delete fournisseur_url(@fournisseur)
    end

    assert_redirected_to fournisseurs_url
  end
end
