# NOTE this does not using waiting send, waiting yield, or waiting take, to my knowledge
ractor1 = Ractor.new{ "r1" }
ractor2 = Ractor.new{ "r2" }
ractors = [r1, r2]
results = []

# Wait for r1 or r2's Ractor.yield
ractor, obj = Ractor.select(*rs)
ractorss.delete(r)
results << obj

# Second try (rs only contain not-closed ractors)
ractor, obj = Ractor.select(*rs)
ractors.delete(r)
results << obj
results.sort == ['r1', 'r2']
#=> true
