require_relative 'main'

RSpec.describe 'minimum_window_substring' do
  it 'finds minimum window containing all characters' do
    expect(minimum_window_substring('ADOBECODEBANC', 'ABC')).to eq('BANC')
  end

  it 'returns empty string when no window exists' do
    expect(minimum_window_substring('a', 'aa')).to eq('')
  end

  it 'handles single character match' do
    expect(minimum_window_substring('a', 'a')).to eq('a')
  end

  it 'handles window at start' do
    expect(minimum_window_substring('ab', 'a')).to eq('a')
  end

  it 'handles window at end' do
    expect(minimum_window_substring('ba', 'a')).to eq('a')
  end

  it 'handles duplicate characters in t' do
    expect(minimum_window_substring('a', 'aa')).to eq('')
    expect(minimum_window_substring('aa', 'aa')).to eq('aa')
  end
end

