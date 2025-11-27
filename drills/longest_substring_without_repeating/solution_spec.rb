require_relative 'main'

RSpec.describe 'longest_substring_without_repeating' do
  it 'finds longest substring' do
    expect(longest_substring_without_repeating('abcabcbb')).to eq(3)
  end

  it 'handles single character string' do
    expect(longest_substring_without_repeating('bbbbb')).to eq(1)
  end

  it 'handles all unique characters' do
    expect(longest_substring_without_repeating('pwwkew')).to eq(3)
  end

  it 'handles empty string' do
    expect(longest_substring_without_repeating('')).to eq(0)
  end

  it 'handles single character' do
    expect(longest_substring_without_repeating('a')).to eq(1)
  end

  it 'handles string with spaces' do
    expect(longest_substring_without_repeating(' ')).to eq(1)
  end
end

