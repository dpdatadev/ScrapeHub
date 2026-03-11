require "test_helper"

class CommandConfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @command_config = command_configs(:one)
  end

  test "should get index" do
    get command_configs_url
    assert_response :success
  end

  test "should get new" do
    get new_command_config_url
    assert_response :success
  end

  test "should create command_config" do
    assert_difference("CommandConfig.count") do
      post command_configs_url, params: { command_config: { args: @command_config.args, created_at: @command_config.created_at, name: @command_config.name, notes: @command_config.notes, priority: @command_config.priority } }
    end

    assert_redirected_to command_config_url(CommandConfig.last)
  end

  test "should show command_config" do
    get command_config_url(@command_config)
    assert_response :success
  end

  test "should get edit" do
    get edit_command_config_url(@command_config)
    assert_response :success
  end

  test "should update command_config" do
    patch command_config_url(@command_config), params: { command_config: { args: @command_config.args, created_at: @command_config.created_at, name: @command_config.name, notes: @command_config.notes, priority: @command_config.priority } }
    assert_redirected_to command_config_url(@command_config)
  end

  test "should destroy command_config" do
    assert_difference("CommandConfig.count", -1) do
      delete command_config_url(@command_config)
    end

    assert_redirected_to command_configs_url
  end
end
