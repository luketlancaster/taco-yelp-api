require 'rails_helper'

class ListingStoresTest < ActionDispatch::IntegrationTest

  setup { host! 'api.example.com' }

  test 'returns a list of stores' do
    get '/stores'
    assert_equal 200, response.status
    refute_empty response.body
  end
end
