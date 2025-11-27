require_relative 'main'

RSpec.describe 'longest_substring_k_distinct' do
  it 'finds longest substring with k distinct characters' do
    expect(longest_substring_k_distinct('eceba', 2)).to eq(3)
  end

  it 'handles k=1' do
    expect(longest_substring_k_distinct('aa', 1)).to eq(2)
  end

  it 'handles k larger than distinct characters' do
    expect(longest_substring_k_distinct('abc', 5)).to eq(3)
  end

  it 'handles empty string' do
    expect(longest_substring_k_distinct('', 2)).to eq(0)
  end

  it 'handles k=0' do
    expect(longest_substring_k_distinct('abc', 0)).to eq(0)
  end

  it 'handles single character' do
    expect(longest_substring_k_distinct('a', 1)).to eq(1)
  end
end

