require 'rails_helper'

RSpec.describe "Resources", type: :request do
  let(:data) do
    <<~JSON
      {
      "label":"7116",
      "version":2,
      "description":{"title":[{"value":"7116"}]},
      "identification":{"sourceId":"sul:naxos_7116"}}
    JSON
  end
  it 'updates the object' do
    post "/resources", params: data, headers: { 'Content-Type' => 'application/json' }

    puts response.body
    expect(response.status).to eq(201)
  end
end
