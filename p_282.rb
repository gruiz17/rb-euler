def ack(m,n)
  if m == 0
    return n + 1
  end
  if m > 0 && n == 0
    return ack(m-1,1)
  elsif m > 0 && n > 0
    return ack(m-1,ack(m,n-1))
  end
end
