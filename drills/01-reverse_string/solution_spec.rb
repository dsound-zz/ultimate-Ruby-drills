require_relative 'main'

RSpec.describe 'reverse_string' do
  it 'reverses a simple string' do
    expect(reverse_string('hello')).to eq('olleh')
  end

  it 'reverses a string with spaces' do
    expect(reverse_string('hello world')).to eq('dlrow olleh')
  end

  it 'handles single character' do
    expect(reverse_string('a')).to eq('a')
  end

  it 'handles empty string' do
    expect(reverse_string('')).to eq('')
  end

  it 'handles string with special characters' do
    expect(reverse_string('!@#$')).to eq('$#@!')
  end

  it 'handles string with numbers' do
    expect(reverse_string('12345')).to eq('54321')
  end

  it 'handles palindrome' do
    expect(reverse_string('racecar')).to eq('racecar')
  end
end

