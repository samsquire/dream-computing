
for item in range(start, servers):
  if up(item):
    return item
  else:
    continue