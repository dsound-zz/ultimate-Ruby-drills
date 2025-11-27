require_relative 'main'

RSpec.describe 'count_inversions' do
  it 'counts inversions in unsorted array' do
    expect(count_inversions([2, 4, 1, 3, 5])).to eq(3)
  end

  it 'returns 0 for sorted array' do
    expect(count_inversions([1, 2, 3, 4, 5])).to eq(0)
  end

  it 'counts all inversions in reverse sorted array' do
    expect(count_inversions([5, 4, 3, 2, 1])).to eq(10)
  end

  it 'handles empty array' do
    expect(count_inversions([])).to eq(0)
  end

  it 'handles single element' do
    expect(count_inversions([5])).to eq(0)
  end

  it 'handles two elements' do
    expect(count_inversions([2, 1])).to eq(1)
    expect(count_inversions([1, 2])).to eq(0)
  end

  it 'handles duplicate values' do
    expect(count_inversions([2, 2, 1])).to eq(2)
  end
end

