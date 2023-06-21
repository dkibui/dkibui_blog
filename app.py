def solution(N):
    bstr = "{0:b}".format(N)
    max_gap = 0
    i = 0
    while i < len(bstr):
        if bstr[i] == "1":
            for j in range(i, len(bstr)):
                if bstr[i] == bstr[j] and i != j:
                    if max_gap < j - i - 1:
                        max_gap = j - i - 1
                        i = j
        i += 1
    return max_gap


a = solution(32)
print(a)
# 1011
