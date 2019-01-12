class SolutionClass

  def missing_numbers(arr)
    hash = Hash.new 0 #generate hash

    #populate the hash
    arr.each do |n|
      hash[n] = true
    end

    arr = arr.sort #sort array
    last_num = arr[-1] #get last number
    res = [] #solution

    #iterate
    for i in arr[0]..last_num do
      if !hash.has_key?(i)
        res << i
      end
    end

    return res
  end

end


RSpec.describe 'Solution' do
  it 'different numbers' do
    solution = SolutionClass.new

    res = solution.missing_numbers([0,3,5,7])

    expect(res).to eq [1,2,4,6]
  end

  it 'same number many times' do
    solution = SolutionClass.new

    res = solution.missing_numbers([0,0,0,0])

    expect(res).to eq []
  end

  it 'large range' do
    solution = SolutionClass.new

    res = solution.missing_numbers([10,1])

    expect(res).to eq [2,3,4,5,6,7,8,9]
  end

end
