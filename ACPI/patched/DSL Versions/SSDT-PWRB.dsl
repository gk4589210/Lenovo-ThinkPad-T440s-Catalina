DefinitionBlock ("", "SSDT", 2, "T440", "_PWRB", 0x00000000)
{
    External (_SB_.PWRB, DeviceObj)

    Device (_SB.PWRB)
    {
        Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
    }
}

