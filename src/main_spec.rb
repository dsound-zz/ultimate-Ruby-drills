# This file is dynamically replaced by load-drill.sh
# Run: ./scripts/load-drill.sh <drill-name> to load a drill

require_relative 'main'

RSpec.describe 'No drill loaded' do
  it 'should load a drill first' do
    expect(true).to be true
  end
end

