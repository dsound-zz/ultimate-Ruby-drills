require_relative 'main'

RSpec.describe 'reverse_vowels' do
  it 'reverses vowels in simple string' do
    expect(reverse_vowels('hello')).to eq('holle')
  end

  it 'reverses vowels in "leetcode"' do
    expect(reverse_vowels('leetcode')).to eq('leotcede')
  end

  it 'handles string with no vowels' do
    expect(reverse_vowels('bcdfg')).to eq('bcdfg')
  end

  it 'handles string with only vowels' do
    expect(reverse_vowels('aeiou')).to eq('uoiea')
  end

  it 'handles uppercase vowels' do
    expect(reverse_vowels('HELLO')).to eq('HOLLE')
  end

  it 'handles mixed case' do
    expect(reverse_vowels('aA')).to eq('Aa')
  end

  it 'handles empty string' do
    expect(reverse_vowels('')).to eq('')
  end
end

