describe Queries::Links do

  let(:query) {
    <<-QUERY
      query FetchLinks {
        all_links {
          id
          url
          description
        }
      }      
    QUERY
  }

  context 'just pass only one parameter [page] to query' do

    before(:each) do
      @link = create(:link)
    end

    it 'should return 1 links and basic field' do
      result = GraphqlSchema.execute(query)
      links = result['data']['all_links']
      expect(links.size).to eq 1
      expect(links[0]['url']).to eq(@link.url)
      expect(links[0]['description']).to eq(@link.description)
    end
  end
end
