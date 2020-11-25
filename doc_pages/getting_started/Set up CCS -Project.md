@page setup_ccs_project Set Up CCS-Project

This page describes how to set up a new Code Composer Studio-Project

___

**Create Project**

1) Open Code Composer Studio 

2) File -> New -> CCS Project

![new_project](../doc_pages/getting_started/img/new_project.png)  

---

**Config Target Configuration File**

3) Set Target to "2833x Delfino", "TMS320F28335"

Set Connection to "Texas Instruments XDS100v2 USB Debug Probe"

![new_project](../doc_pages/getting_started/img/set_target.png)  

---

**Name your project**

4) Check "Use default location" to save your project in your workspace | Uncheck "Use default location" to choose a path for your project

5)  Set Compiler version to "TI v15.12.1.LTS" for Code Composer Studio v6.1.3  
Set Compiler version "TI v20.2.0.LTS" or "TI v20.2.1.LTS" for Code Composer Studio v10

![new_project](../doc_pages/getting_started/img/set_compiler_version.png)  

---

**Project type and tool-chain**

6) Set output type to "Executable"

Output format: "legacy off"

Linker command file: "<automatic>"

Runtime support library: "<automatic>"

![new_project](../doc_pages/getting_started/img/project_type.png)

---

**Project templates and examples**

7) Select Empty Project (with main.c)

8) Finish

![new_project](../doc_pages/getting_started/img/empty_project.png)

