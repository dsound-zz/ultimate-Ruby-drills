require_relative 'main'

RSpec.describe 'two_sum_sorted' do
  it 'finds two numbers that sum to target' do
    expect(two_sum_sorted([2, 7, 11, 15], 9)).to eq([0, 1])
  end

  it 'finds numbers in middle of array' do
    expect(two_sum_sorted([1, 2, 3, 4, 5], 7)).to eq([2, 3])
  end

  it 'returns nil when no solution exists' do
    expect(two_sum_sorted([1, 2, 3, 4], 10)).to be_nil
  end

  it 'handles negative numbers' do
    expect(two_sum_sorted([-3, -1, 0, 2, 5], -1)).to eq([0, 2])
  end

  it 'handles duplicate values' do
    expect(two_sum_sorted([1, 2, 2, 3], 4)).to eq([1, 2])
  end

  it 'handles two element array' do
    expect(two_sum_sorted([1, 2], 3)).to eq([0, 1])
  end
end

