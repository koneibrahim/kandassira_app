require 'test_helper'

class AchatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @achat = achats(:one)
  end

  test "should get index" do
    get achats_url
    assert_response :success
  end

  test "should get new" do
    get new_achat_url
    assert_response :success
  end

  test "should create achat" do
    assert_difference('Achat.count') do
      post achats_url, params: { achat: { date_ac: @achat.date_ac, id_fo: @achat.id_fo, payee: @achat.payee, somme: @achat.somme } }
    end

    assert_redirected_to achat_url(Achat.last)
  end

  test "should show achat" do
    get achat_url(@achat)
    assert_response :success
  end

  test "should get edit" do
    get edit_achat_url(@achat)
    assert_response :success
  end

  test "should update achat" do
    patch achat_url(@achat), params: { achat: { date_ac: @achat.date_ac, id_fo: @achat.id_fo, payee: @achat.payee, somme: @achat.somme } }
    assert_redirected_to achat_url(@achat)
  end

  test "should destroy achat" do
    assert_difference('Achat.count', -1) do
      delete achat_url(@achat)
    end

    assert_redirected_to achats_url
  end
end
