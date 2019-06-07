DefinitionBlock ("", "SSDT", 2, "APPLE", "_HPET", 0)
{
    External (_SB_.PCI0.LPC_.HPET, DeviceObj)
    
    Scope (_SB.PCI0.LPC.HPET)
    {
        Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)
        Name (_CID, EisaId ("PNP0C01") /* System Board */)
        Name (BUF0, ResourceTemplate()
        {
            IRQNoFlags(){0}
            IRQNoFlags(){8}
            Memory32Fixed (ReadOnly, 0xFED00000, 0x00000400,)
        })
        Method (_STA, 0, NotSerialized)
        {
            Return (0x0F)
        }
        Method (_CRS, 0, NotSerialized)
        {
            Return (BUF0) /* \_SB_.PCI0.ISAB.HPET.BUF0 */
        }
    }
}

