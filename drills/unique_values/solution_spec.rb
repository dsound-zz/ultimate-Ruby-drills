require_relative 'main'

RSpec.describe 'unique_values' do
  it 'removes duplicates from array of numbers' do
    expect(unique_values([1, 2, 2, 3, 3, 3, 4])).to eq([1, 2, 3, 4])
  end

  it 'removes duplicates from array of strings' do
    expect(unique_values(['a', 'b', 'a', 'c', 'b'])).to eq(['a', 'b', 'c'])
  end

  it 'preserves order of first occurrence' do
    expect(unique_values([3, 1, 3, 2, 1])).to eq([3, 1, 2])
  end

  it 'handles empty array' do
    expect(unique_values([])).to eq([])
  end

  it 'handles array with all unique values' do
    expect(unique_values([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
  end

  it 'handles array with all same values' do
    expect(unique_values([1, 1, 1, 1])).to eq([1])
  end

  it 'handles mixed types' do
    expect(unique_values([1, 'a', 1, 'b', 'a'])).to eq([1, 'a', 'b'])
  end

  it 'handles array with nil' do
    expect(unique_values([nil, 1, nil, 2])).to eq([nil, 1, 2])
  end
end

