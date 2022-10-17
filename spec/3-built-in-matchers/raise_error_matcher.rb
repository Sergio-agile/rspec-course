RSpec.describe 'raise_error matcher' do

  def some_method
    x
  end

  class CustomError < StandardError; end

  it 'can check for specific error' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    # expect { 10 / 0 }.to raise_error(NameError) => fail cause error dosn't match
  end

  it 'can check for custom error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end
