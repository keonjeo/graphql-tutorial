require "rails_helper"

describe Link do
  before(:each) do
    @link = create(:link)
  end
  context 'hello' do
    it "test" do
      expect(@link.url).to eq(@link.url)
      expect(@link.description).to eq(@link.description)
    end
  end
end
