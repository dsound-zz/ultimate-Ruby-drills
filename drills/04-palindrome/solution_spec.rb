require_relative 'main'

RSpec.describe 'palindrome' do
  it 'identifies simple palindrome' do
    expect(palindrome('racecar')).to be true
  end

  it 'identifies non-palindrome' do
    expect(palindrome('hello')).to be false
  end

  it 'handles single character' do
    expect(palindrome('a')).to be true
  end

  it 'handles empty string' do
    expect(palindrome('')).to be true
  end

  it 'handles palindrome with different cases' do
    expect(palindrome('Racecar')).to be true
  end

  it 'handles palindrome with spaces' do
    expect(palindrome('race car')).to be true
  end

  it 'handles palindrome with punctuation' do
    expect(palindrome('A man a plan a canal Panama')).to be true
  end

  it 'handles numeric palindrome' do
    expect(palindrome('12321')).to be true
  end

  it 'handles non-palindrome with spaces' do
    expect(palindrome('hello world')).to be false
  end

  it 'handles palindrome with special characters' do
    expect(palindrome("Madam, I'm Adam")).to be true
  end
end

