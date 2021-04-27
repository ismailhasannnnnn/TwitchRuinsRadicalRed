function getAddressFromAddressList(record) -- AddressList.getMemoryRecordByDescription("Anything from table")
    local record = record.CurrentAddress
    return ('%X'):format(record)
end

-- Restore Opponent Pokemon to Full Health --

writeSmallInteger(getAddressFromAddressList(AddressList.getMemoryRecordByDescription("Opponent Health")), readSmallInteger(getAddressFromAddressList(AddressList.getMemoryRecordByDescription("Opponent Total Health"))))

-- Set In Battle Pokemon to 1 HP -- 

writeSmallInteger(getAddressFromAddressList(AddressList.getMemoryRecordByDescription("Pokemon In Battle Health")), 1)

-- Fully Heal In Battle Pokemon --

writeSmallInteger(getAddressFromAddressList(AddressList.getMemoryRecordByDescription("Pokemon In Battle Health")), readSmallInteger(getAddressFromAddressList(AddressList.getMemoryRecordByDescription("Pokemon In Battle Total Health"))))

-- Change Pokemon 1 Status Outside of Battle to FRZ

writeBytes(getAddressFromAddressList(AddressList.getMemoryRecordByDescription("Pokemon 1 Status")), 0x20)