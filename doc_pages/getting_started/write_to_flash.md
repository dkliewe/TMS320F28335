@page write_to_flash Programming the Flash
This page describes how to program and execute code from the on-chip flash memory. Using the on-chip flash eliminates the need for external non-volatile memory or a host processor from which to bootload. 

---

**Link Initialized Sections to On-Chip-Flash**

1) Click your Project with the right Mouse Button --> Open Properties

2) Navigate to General --> Select the Linker command file: F28335.cmd

![choose_linker_command_file](../doc_pages/getting_started/img/choose_linker_command_file.png) 

Apply and Close	--> F28335.cmd is created in Project Folder 

3) Open file F28335.cmd and replace code by <a href="../doc_documents/F28335.txt" target="_blank">this code</a>  



Initialized Sections are now linked to Flash for standalone operation


---

**Executing from Flash after Reset**

4) Click your Project with the right Mouse Button --> New --> File

5) Name your file "TMS320F28335_Startupcode.asm" - Ensure that it is an assembly file with ending .asm

![create_startup_file](../doc_pages/getting_started/img/create_startup_file.png) 

6) Open file TMS320F28335_Startupcode.asm and replace code by <a href="../doc_documents/TMS320F28335_Startupcode.asm" target="_blank">this code</a>  

---

**Check your configuration**

7) Click Build Project

8) Click Debug Button --> Erasing Flash Sectors appears

![erasing_flash_sectors](../doc_pages/getting_started/img/erasing_flash_sectors.png) 

9) Click Reset CPU Button ![reset_cpu](../doc_pages/getting_started/img/reset_cpu.png) 

--> Disassembly window opens

--> Click View Disassembly... ![view_disassembly](../doc_pages/getting_started/img/view_disassembly.png) 

You can see the start of the bootloader in the bootram now

10) You can now single step through the bootloader, to understand the operations of the bootloader | Or you click on Run --> Go Main to skip the single steps

![go_to_main](../doc_pages/getting_started/img/go_to_main.png) 

--> When code jumps to your main() function, it confirms that your flash has been programmed properly and that the bootloader is properly configured to jump to flash.  

---



**Flash has been successfully programmed and your code runs in standalone operation on the TMS320F28335 when it is powered.** 