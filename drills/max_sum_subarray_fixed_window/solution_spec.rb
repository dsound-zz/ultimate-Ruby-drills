require_relative 'main'

RSpec.describe 'max_sum_subarray_fixed_window' do
  it 'finds maximum sum of fixed window' do
    expect(max_sum_subarray_fixed_window([1, 4, 2, 10, 23, 3, 1, 0, 20], 4)).to eq(39)
  end

  it 'handles window size equal to array length' do
    expect(max_sum_subarray_fixed_window([1, 2, 3], 3)).to eq(6)
  end

  it 'handles window size of 1' do
    expect(max_sum_subarray_fixed_window([1, 2, 3, 4], 1)).to eq(4)
  end

  it 'handles negative numbers' do
    expect(max_sum_subarray_fixed_window([-1, -2, -3, -4], 2)).to eq(-3)
  end

  it 'handles mixed positive and negative' do
    expect(max_sum_subarray_fixed_window([2, -1, 5, 1, 3, 2], 3)).to eq(9)
  end

  it 'handles single element array' do
    expect(max_sum_subarray_fixed_window([5], 1)).to eq(5)
  end
end

