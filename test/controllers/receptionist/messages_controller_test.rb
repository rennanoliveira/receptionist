require 'test_helper'

module Receptionist
  class MessagesControllerTest < ActionController::TestCase
    setup do
      @message = receptionist_messages(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:messages)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create message" do
      assert_difference('Message.count') do
        post :create, message: { category: @message.category, text: @message.text, title: @message.title }
      end

      assert_redirected_to message_path(assigns(:message))
    end

    test "should show message" do
      get :show, id: @message
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @message
      assert_response :success
    end

    test "should update message" do
      patch :update, id: @message, message: { category: @message.category, text: @message.text, title: @message.title }
      assert_redirected_to message_path(assigns(:message))
    end

    test "should destroy message" do
      assert_difference('Message.count', -1) do
        delete :destroy, id: @message
      end

      assert_redirected_to messages_path
    end
  end
end
