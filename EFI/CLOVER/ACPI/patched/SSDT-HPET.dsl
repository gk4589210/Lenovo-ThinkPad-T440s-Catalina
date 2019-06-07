DefinitionBlock ("", "SSDT", 2, "APPLE", "_HPET", 0x00000000)
{
    External (_SB_.PCI0.LPC_.HPET, DeviceObj)
    External (_SB_.PCI0.LPC_.HPET.BUF0, DeviceObj)

    Scope (_SB.PCI0.LPC.HPET)
    {
         Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
         Name (_CID, EisaId ("PNP0C01") /* System Board */)  // _CID: Compatible ID
         Name (_STA, 0x0F)
         Method (_CRS, 0, NotSerialized)
         {
             Return (BUF0)
         }   
    }
}

