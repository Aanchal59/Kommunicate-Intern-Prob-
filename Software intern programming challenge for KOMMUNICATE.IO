//GREEDY ALGORITHM
def get_max_amt(movies_details, months):
    movies_details.sort(key=lambda x: (x[2][1], x[2][0]))
    start = movies_details[0]
    res = [start]
    end, amt = start[2], 1

    for i in range(1, len(movies_details)):
        curr_start_date, curr_start_month = movies_details[i][1]
        if curr_start_date > end[0] and curr_start_month >= end[1]:
            amt += 1
            end = movies_details[i][2]
            res.append(movies_details[i])
        elif curr_start_date <= end[0] and curr_start_month > end[1]:
            amt += 1
            end = movies_details[i][2]
            res.append(movies_details[i])

    return res, amt
