require 'test_helper'

class DictionaryRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get dictionary_records_create_url
    assert_response :success
  end

end
