#module stdcall
#deffunc local scinit
dim sci,3:bload "MEM:ORY",sci
ldim scia,1:lpoke scia,0,lpeek(sci(0),0)
dupptr scib,sci(1),32,4
return
#defcfunc syscall int prm_0,int prm_1,int prm_2,int prm_3
lpoke scib(0),0,prm_0
lpoke scib(1),0,prm_1
lpoke scib(2),0,prm_2
lpoke scib(3),0,prm_3
goto scia
#global
scinit@stdcall
