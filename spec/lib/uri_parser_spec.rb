require_relative '../../lib/uri_parser'

#require 'action_controller/metal/exceptions'

describe UriParser do
  describe 'getting the id from a board uri' do
    subject { described_class.get_id(uri) }

    let(:uri) { mock 'uri' }
    let(:parsed_uri) { { id: id, format: :json } }
    let(:id) { mock 'id' }

    context 'when the uri is a valid uri' do
      before do
        Rails.stub_chain('application.routes.recognize_path').with(uri).and_return(parsed_uri)
      end

      it 'returns the id of the board' do
        subject.should == id
      end
    end

    context 'when the uri is not a valid board uri' do
      before do
        Rails.stub(:application) { raise ActionController::RoutingError, 'asdf' }
      end

      it 'returns nil' do
        subject.should be_nil
      end
    end
  end
end
