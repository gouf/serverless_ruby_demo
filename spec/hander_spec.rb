describe 'AWS Lambda Ruby Hello' do
  context 'Invoke shindan function' do
    it 'returns error response' do
      response = shindan(event: {}, context: {})

      expect(response[:statusCode]).to eq 400
    end

    it 'returns succeed response' do
      # NOTE: 任意の有効な shindan_id を指定する
      response = shindan(event: {'shindan_id' => 865_730}, context: {})

      expect(response[:statusCode]).to eq 200
    end
  end
end
