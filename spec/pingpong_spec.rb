require('rspec')
require('pingpong')


describe('#pingpong') do
  it("counts up from one to inputted number") do
    expect(pingpong(10)).to(eq([1,2,3,4,5,6,7,8,9,10]))
  end

  it("replaces 3 and 6 with three to ping") do
    expect(ping_replace(pingpong(6))).to(eq(["1","2","ping","4","pong","ping"]))
  end

  it("replaces 5 with pong") do
    expect(ping_replace(pingpong(5))).to(eq(["1","2","ping","4","pong"]))
  end

  it("checks if larger numbers have 3,5,6") do
    expect(ping_replace(pingpong(13))).to(eq(["1","2","ping","4","pong","ping","7","8","9","10","11","12","ping"]))
  end
end
