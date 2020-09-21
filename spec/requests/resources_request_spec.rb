require 'rails_helper'

RSpec.describe "Resources", type: :request do
  let(:data) do
    <<~JSON
      {"type":"http://cocina.sul.stanford.edu/models/media.jsonld",
      "externalIdentifier":"druid:dd999df4567","label":"7116",
      "version":2,
      "access":{"access":"stanford","controlledDigitalLending":false,"download":"stanford","useAndReproductionStatement":"Property rights reside with the repository. Literary rights reside with the creators of the documents or their heirs. To obtain permission to publish or reproduce, please contact the Stanford Archive of Recorded Sound at soundarchive@stanford.edu."},
      "administrative":{"hasAdminPolicy":"druid:dd999df4567","partOfProject":"Naxos : born digital audio : no catkey"},
      "description":{"title":[{"value":"number 7116"}]},
      "identification":{"sourceId":"sul:naxos_7116"}}
    JSON
  end
  it 'updates the object' do
    post "/resources", params: data
    puts response.body
    expect(response.status).to eq(201)
  end
end
