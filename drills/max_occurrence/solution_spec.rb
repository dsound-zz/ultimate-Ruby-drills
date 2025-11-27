require_relative 'main'

RSpec.describe 'max_occurrence' do
  it 'finds most frequent character in string' do
    expect(max_occurrence('hello')).to eq('l')
  end

  it 'finds most frequent character with tie (returns first)' do
    expect(max_occurrence('hello world')).to eq('l')
  end

  it 'handles single character string' do
    expect(max_occurrence('a')).to eq('a')
  end

  it 'handles empty string' do
    expect(max_occurrence('')).to eq('')
  end

  it 'handles string with all same characters' do
    expect(max_occurrence('aaaa')).to eq('a')
  end

  it 'handles string with numbers' do
    expect(max_occurrence('112233')).to eq('1')
  end

  it 'handles array of numbers' do
    expect(max_occurrence([1, 2, 2, 3, 3, 3])).to eq(3)
  end

  it 'handles array of strings' do
    expect(max_occurrence(['a', 'b', 'a', 'c', 'a'])).to eq('a')
  end

  it 'handles array with tie (returns first)' do
    expect(max_occurrence([1, 2, 2, 1, 1])).to eq(1)
  end

  it 'handles empty array' do
    expect(max_occurrence([])).to be_nil
  end

  it 'handles string with spaces' do
    expect(max_occurrence('hello world')).to eq('l')
  end
end

