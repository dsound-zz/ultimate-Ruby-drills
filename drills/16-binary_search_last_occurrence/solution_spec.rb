require_relative 'main'

RSpec.describe 'binary_search_last_occurrence' do
  it 'finds last occurrence in array with duplicates' do
    expect(binary_search_last_occurrence([1, 2, 2, 2, 3, 4], 2)).to eq(3)
  end

  it 'finds single occurrence' do
    expect(binary_search_last_occurrence([1, 2, 3, 4, 5], 3)).to eq(2)
  end

  it 'returns -1 when target not found' do
    expect(binary_search_last_occurrence([1, 2, 3, 4, 5], 6)).to eq(-1)
  end

  it 'finds last occurrence at start' do
    expect(binary_search_last_occurrence([1, 1, 1, 2, 3], 1)).to eq(2)
  end

  it 'finds last occurrence at end' do
    expect(binary_search_last_occurrence([1, 2, 3, 4, 4, 4], 4)).to eq(5)
  end

  it 'handles empty array' do
    expect(binary_search_last_occurrence([], 5)).to eq(-1)
  end

  it 'handles single element array' do
    expect(binary_search_last_occurrence([5], 5)).to eq(0)
    expect(binary_search_last_occurrence([5], 3)).to eq(-1)
  end
end

