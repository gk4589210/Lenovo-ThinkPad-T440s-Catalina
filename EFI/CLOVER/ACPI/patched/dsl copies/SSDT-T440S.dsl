// for testing including all SSDTs with NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "LENOVO", "_T440S", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-BATC.dsl"
    #include "SSDT-KBD.dsl"
    #include "SSDT-LED.dsl"
    #include "SSDT-USB.dsl"
    #include "SSDT-ALC3232.dsl"
    #include "SSDT-DTGP.dsl"
    #include "SSDT-PNLF.dsl"
    #include "SSDT-MCHC.dsl"
    #include "SSDT-ALS0.dsl"
}
