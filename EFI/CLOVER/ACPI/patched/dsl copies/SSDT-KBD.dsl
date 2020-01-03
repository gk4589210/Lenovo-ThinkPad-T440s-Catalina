DefinitionBlock ("", "SSDT", 2, "T440S", "_KBD", 0x00000000)
{
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)
    External (_SB_.PCI0.LPC_.KBD_, DeviceObj)

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (KBD, 0x0406)
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (KBD, 0x0405)
        }

        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (KBD, 0x033E)
        }

        Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (KBD, 0x046E)
        }

        Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (KBD, 0x0342)
        }

        Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (KBD, 0x0367)
        }

        Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (KBD, 0x0368)
        }

        Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (KBD, 0x0369)
        }

        Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (KBD, 0x036A)
        }
    }

    Scope (_SB.PCI0.LPC.KBD)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x04)
            {
                "RM,oem-id", 
                "LENOVO", 
                "RM,oem-table-id", 
                "Thinkpad_Clickpad"
            })
        }

        Name (RMCF, Package (0x04)
        {
            "Synaptics TouchPad", 
            Package (0x2A)
            {
                "BogusDeltaThreshX", 
                0x64, 
                "BogusDeltaThreshY", 
                0x64, 
                "Clicking", 
                ">y", 
                "DragLockTempMask", 
                0x00040004, 
                "DynamicEWMode", 
                ">n", 
                "FakeMiddleButton", 
                ">n", 
                "HWResetOnStart", 
                ">y", 
                "PalmNoAction When Typing", 
                ">y", 
                "ScrollResolution", 
                0x0320, 
                "SmoothInput", 
                ">y", 
                "UnsmoothInput", 
                ">y", 
                "Thinkpad", 
                ">y", 
                "EdgeBottom", 
                Zero, 
                "FingerZ", 
                0x1E, 
                "MaxTapTime", 
                0x05F5E100, 
                "MouseMultiplierX", 
                0x08, 
                "MouseMultiplierY", 
                0x08, 
                "MouseScrollMultiplierX", 
                0x08, 
                "MouseScrollMultiplierY", 
                0x08
            }, 

            "Keyboard", 
            Package (0x02)
            {
                "Custom PS2 Map", 
                Package (0x02)
                {
                    Package (0x00){}, 
                    "e037=64"
                }
            }
        })
    }
}

