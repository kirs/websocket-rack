shared_examples_for 'all handlers' do
  it "should return flash policy file" do
    conn = new_server_connection
    conn.write(flash_policy_request)
    conn.read(flash_policy_response.length).should eql(flash_policy_response)
  end
  
  context 'for draft75' do
    let(:handshake_request)  { spec75_handshake_request }
    let(:handshake_response) { spec75_handshake_response }
    let(:message)            { spec75_message }
    
    it_should_behave_like 'all drafts'
  end
  
  # Also draft00
  context 'for draft76' do
    let(:handshake_request)  { spec76_handshake_request }
    let(:handshake_response) { spec76_handshake_response }
    let(:message)            { spec76_message }
    
    it_should_behave_like 'all drafts'
  end
  
  # Drafts 01, 02 and 03 are pretty the same so one test for all
  context 'for draft03' do
    let(:handshake_request)  { spec03_handshake_request }
    let(:handshake_response) { spec03_handshake_response }
    let(:message)            { spec03_message }
    
    it_should_behave_like 'all drafts'
  end
  
  context 'for draft05' do
    let(:handshake_request)  { spec05_handshake_request }
    let(:handshake_response) { spec05_handshake_response }
    let(:message)            { spec05_message }
    
    it_should_behave_like 'all drafts'
  end
  
  context 'for draft06' do
    let(:handshake_request)  { spec06_handshake_request }
    let(:handshake_response) { spec06_handshake_response }
    let(:message)            { spec06_message }
    
    it_should_behave_like 'all drafts'
  end
end