function bubbleSort(arr)
    local n = #arr
    for i = 1, n - 1 do
        for j = 1, n - i do
            if arr[j] > arr[j + 1] then
                local temp = arr[j]
                arr[j] = arr[j + 1]
             arr[j + 1] = temp
            end
         end
    end
    return arr
end

local list = {1, 22, 94, 8, 14, 23, 9, 7, 104, 74, 0, 4, 64, 34, 91, 44, 53}
local sorted = bubbleSort(list)

for i = 1, #sorted do
    print(sorted[i])
end
