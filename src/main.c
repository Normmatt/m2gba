#include "definitions.h"

void AgbMain(void) {
    gUnknown_03002A34 = 0;
    ResetTheRam();
    sub_800E5B4();
    m2_init_character_info_defaults();
    MainCallback = sub_80137A4;
    EnableM4A();
    
    do {
        MainCallback();
    } while (gAllocationCount == 0);
    
    // Hang if any allocations were not properly freed
    while (1) {}
}