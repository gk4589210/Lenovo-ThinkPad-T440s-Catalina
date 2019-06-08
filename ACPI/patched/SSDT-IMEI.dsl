DefinitionBlock ("", "SSDT", 2, "APPLE", "_IMEI", 0x00160000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.IMEI, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (IMEI)
        {
            Name (_ADR, 0x00160000)
        }
    }
}

