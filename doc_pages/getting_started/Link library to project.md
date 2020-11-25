@page link_to_library Link Library to Project

This page describes how to link the TMS320F28335 Library to your Project

----

1) Click your Project with Right Mouse Button --> Properties

![link_library_1](../doc_pages/getting_started/img/link_library1.png)  

2) Go to Build -> Dependencies -> Add -> Select TMS320F28335 and click OK

![link_library_2](../doc_pages/getting_started/img/link_library2.png)  

3) Go to Build -> Include Options -> Add dir to #include search path -> Workspaces

![link_library_3](../doc_pages/getting_started/img/link_library3.png)  

4)  Select TMS320F28335 and click OK

![link_library_4](../doc_pages/getting_started/img/link_library4.png)  

--> Path will be shown in window:

![link_library_5](../doc_pages/getting_started/img/link_library5.png)  

Click OK

5) Go to C2000 Linker --> File Search Path --> Include library file or command file as input --> Workspace

![link_library_6](../doc_pages/getting_started/img/link_library6.png)  

6) Select TMS320F28335 --> Debug --> TMS320F28335.lib and click OK

![link_library_7](../doc_pages/getting_started/img/link_library7.png)  

--> Path will be shown in window

![link_library_8](../doc_pages/getting_started/img/link_library8.png)  

Click OK

7) Click Apply and Close

---

**The libary has been linked to your project successfully and you can use library functions in your project now**