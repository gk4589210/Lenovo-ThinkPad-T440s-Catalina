# Static Patches From Lenovo ThinkPad T450

These are patches which are meant to be applied directly to the DSDT.dsl (decompiled DSDT.aml file) on Lenovo ThinkPad T440, T440s, T450, and T450s Ultrabooks when opting to go with the Static Patch method for resolving issues with the stock ACPI configuration of the systems listed above when putting together a completed macOS Mojave Hackintosh build. The patches require the systems DSDT.aml to be decompiled into .dsl format which can be accomplished using the iasl binary which can be found on RehabMan's BitBucket page. These are the required patches necessary for resolving a number of issues that are present in the stock ACPI configuration when running macOS Mojave. 

- 1_system_HPRT.txt
 
  - Resolves issues with the HPET device not being detected by macOS.
 
- 1_system_IMEI.txt

  - Adds the missing IMEI device if its absent from your DSDT
  
- 1_system_IRQ.txt

  - Solves issues with AppleHDA which is how sound functionality is handled.
  
- 1_system_Mutex.txt

  - Solves issues caused by non-zero level Mutex configuration being reported when called by ACPI.
  
- 1_system_OSYS_win8.txt

  - Sets all system OS probes to return Windows 8 as the active OS which fixes stability in the ACPI.
  
- 1_system_PNOT.txt

  - Solves issues with CPU power instability in the DSDT.aml by disabling certain unstable code.
 
- 1_system_RTC.txt

  - Fixes RTC call scripts from the DSDT code thats unable to properly call the code thats signaled.
  
- 1_system_SMBUS.txt
  
  - Fixes the missing _DSM definitions for your system power bus controller.
  
- 1_system_WAK2.txt

  - System issues occur from putting the system to sleep and then waking it from the sleeping mode state.
  
- 2_led_blink.txt

  - Fixes the blinking green light present within the actual power button.
  
- 3_Fn_Keys.txt

  - Sets the proper fn-key configuration for allowing the brightness key to function properly.
  
- 3_graphics_PNLF_haswell-broadwell.txt

  - Injects the proper framebuffer options for the PNLF device for brightness key functionality.
  
- 4_battery_T450.txt

  - Repairs the ACPI settings relating tho the proper battery functionality on a device wit multiple batteries.
  
- 5_audio_HDEF-layout.txt

  - Injects the proper _DSM options for the configuration of key portions of the DSDT which relate to system sound functionality.