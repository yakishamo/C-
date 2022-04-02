
not_inline:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

セクション .plt の逆アセンブル:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	push   QWORD PTR [rip+0x2f6a]        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f6b]        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <.plt>
    107f:	90                   	nop

セクション .plt.got の逆アセンブル:

0000000000001080 <__cxa_finalize@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 3d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f3d]        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

セクション .plt.sec の逆アセンブル:

0000000000001090 <__cxa_atexit@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 05 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f05]        # 3fa0 <__cxa_atexit@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010a0 <_ZNSolsEPFRSoS_E@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2efd]        # 3fa8 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010b0 <__stack_chk_fail@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ef5]        # 3fb0 <__stack_chk_fail@GLIBC_2.4>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010c0 <_ZNSt8ios_base4InitC1Ev@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eed]        # 3fb8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <_ZNSolsEi@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ee5]        # 3fc0 <_ZNSolsEi@GLIBCXX_3.4>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

セクション .text の逆アセンブル:

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	31 ed                	xor    ebp,ebp
    10e6:	49 89 d1             	mov    r9,rdx
    10e9:	5e                   	pop    rsi
    10ea:	48 89 e2             	mov    rdx,rsp
    10ed:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    10f1:	50                   	push   rax
    10f2:	54                   	push   rsp
    10f3:	4c 8d 05 66 02 00 00 	lea    r8,[rip+0x266]        # 1360 <__libc_csu_fini>
    10fa:	48 8d 0d ef 01 00 00 	lea    rcx,[rip+0x1ef]        # 12f0 <__libc_csu_init>
    1101:	48 8d 3d e4 00 00 00 	lea    rdi,[rip+0xe4]        # 11ec <main>
    1108:	ff 15 d2 2e 00 00    	call   QWORD PTR [rip+0x2ed2]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    110e:	f4                   	hlt    
    110f:	90                   	nop

0000000000001110 <deregister_tm_clones>:
    1110:	48 8d 3d f9 2e 00 00 	lea    rdi,[rip+0x2ef9]        # 4010 <__TMC_END__>
    1117:	48 8d 05 f2 2e 00 00 	lea    rax,[rip+0x2ef2]        # 4010 <__TMC_END__>
    111e:	48 39 f8             	cmp    rax,rdi
    1121:	74 15                	je     1138 <deregister_tm_clones+0x28>
    1123:	48 8b 05 ae 2e 00 00 	mov    rax,QWORD PTR [rip+0x2eae]        # 3fd8 <_ITM_deregisterTMCloneTable>
    112a:	48 85 c0             	test   rax,rax
    112d:	74 09                	je     1138 <deregister_tm_clones+0x28>
    112f:	ff e0                	jmp    rax
    1131:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001140 <register_tm_clones>:
    1140:	48 8d 3d c9 2e 00 00 	lea    rdi,[rip+0x2ec9]        # 4010 <__TMC_END__>
    1147:	48 8d 35 c2 2e 00 00 	lea    rsi,[rip+0x2ec2]        # 4010 <__TMC_END__>
    114e:	48 29 fe             	sub    rsi,rdi
    1151:	48 89 f0             	mov    rax,rsi
    1154:	48 c1 ee 3f          	shr    rsi,0x3f
    1158:	48 c1 f8 03          	sar    rax,0x3
    115c:	48 01 c6             	add    rsi,rax
    115f:	48 d1 fe             	sar    rsi,1
    1162:	74 14                	je     1178 <register_tm_clones+0x38>
    1164:	48 8b 05 85 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e85]        # 3ff0 <_ITM_registerTMCloneTable>
    116b:	48 85 c0             	test   rax,rax
    116e:	74 08                	je     1178 <register_tm_clones+0x38>
    1170:	ff e0                	jmp    rax
    1172:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001180 <__do_global_dtors_aux>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	80 3d c5 2f 00 00 00 	cmp    BYTE PTR [rip+0x2fc5],0x0        # 4150 <completed.8061>
    118b:	75 2b                	jne    11b8 <__do_global_dtors_aux+0x38>
    118d:	55                   	push   rbp
    118e:	48 83 3d 32 2e 00 00 	cmp    QWORD PTR [rip+0x2e32],0x0        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    rbp,rsp
    1199:	74 0c                	je     11a7 <__do_global_dtors_aux+0x27>
    119b:	48 8b 3d 66 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e66]        # 4008 <__dso_handle>
    11a2:	e8 d9 fe ff ff       	call   1080 <__cxa_finalize@plt>
    11a7:	e8 64 ff ff ff       	call   1110 <deregister_tm_clones>
    11ac:	c6 05 9d 2f 00 00 01 	mov    BYTE PTR [rip+0x2f9d],0x1        # 4150 <completed.8061>
    11b3:	5d                   	pop    rbp
    11b4:	c3                   	ret    
    11b5:	0f 1f 00             	nop    DWORD PTR [rax]
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011c0 <frame_dummy>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	e9 77 ff ff ff       	jmp    1140 <register_tm_clones>

00000000000011c9 <_Z3incRi>:			#インラインの宣言を無くしただけだが関数の位置がはやいところに来ている
    11c9:	f3 0f 1e fa          	endbr64 
    11cd:	55                   	push   rbp
    11ce:	48 89 e5             	mov    rbp,rsp
    11d1:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    11d5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11d9:	8b 00                	mov    eax,DWORD PTR [rax]
    11db:	8d 50 01             	lea    edx,[rax+0x1]
    11de:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11e2:	89 10                	mov    DWORD PTR [rax],edx
    11e4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11e8:	8b 00                	mov    eax,DWORD PTR [rax]
    11ea:	5d                   	pop    rbp
    11eb:	c3                   	ret    

00000000000011ec <main>:
    11ec:	f3 0f 1e fa          	endbr64 
    11f0:	55                   	push   rbp
    11f1:	48 89 e5             	mov    rbp,rsp
    11f4:	48 83 ec 10          	sub    rsp,0x10
    11f8:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    11ff:	00 00 
    1201:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1205:	31 c0                	xor    eax,eax
    1207:	c7 45 f4 05 00 00 00 	mov    DWORD PTR [rbp-0xc],0x5
    120e:	48 8d 45 f4          	lea    rax,[rbp-0xc]
    1212:	48 89 c7             	mov    rdi,rax			#rdiにinc関数の引数を入れる
    1215:	e8 af ff ff ff       	call   11c9 <_Z3incRi>		#inc関数の呼び出し
    121a:	89 c6                	mov    esi,eax
    121c:	48 8d 3d 1d 2e 00 00 	lea    rdi,[rip+0x2e1d]        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1223:	e8 a8 fe ff ff       	call   10d0 <_ZNSolsEi@plt>
    1228:	48 89 c2             	mov    rdx,rax
    122b:	48 8b 05 9e 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d9e]        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1232:	48 89 c6             	mov    rsi,rax
    1235:	48 89 d7             	mov    rdi,rdx
    1238:	e8 63 fe ff ff       	call   10a0 <_ZNSolsEPFRSoS_E@plt>
    123d:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1240:	89 c6                	mov    esi,eax
    1242:	48 8d 3d f7 2d 00 00 	lea    rdi,[rip+0x2df7]        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1249:	e8 82 fe ff ff       	call   10d0 <_ZNSolsEi@plt>
    124e:	48 89 c2             	mov    rdx,rax
    1251:	48 8b 05 78 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d78]        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1258:	48 89 c6             	mov    rsi,rax
    125b:	48 89 d7             	mov    rdi,rdx
    125e:	e8 3d fe ff ff       	call   10a0 <_ZNSolsEPFRSoS_E@plt>
    1263:	b8 00 00 00 00       	mov    eax,0x0
    1268:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
    126c:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    1273:	00 00 
    1275:	74 05                	je     127c <main+0x90>
    1277:	e8 34 fe ff ff       	call   10b0 <__stack_chk_fail@plt>
    127c:	c9                   	leave  
    127d:	c3                   	ret    

000000000000127e <_Z41__static_initialization_and_destruction_0ii>:
    127e:	f3 0f 1e fa          	endbr64 
    1282:	55                   	push   rbp
    1283:	48 89 e5             	mov    rbp,rsp
    1286:	48 83 ec 10          	sub    rsp,0x10
    128a:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    128d:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    1290:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
    1294:	75 32                	jne    12c8 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    1296:	81 7d f8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x8],0xffff
    129d:	75 29                	jne    12c8 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    129f:	48 8d 3d ab 2e 00 00 	lea    rdi,[rip+0x2eab]        # 4151 <_ZStL8__ioinit>
    12a6:	e8 15 fe ff ff       	call   10c0 <_ZNSt8ios_base4InitC1Ev@plt>
    12ab:	48 8d 15 56 2d 00 00 	lea    rdx,[rip+0x2d56]        # 4008 <__dso_handle>
    12b2:	48 8d 35 98 2e 00 00 	lea    rsi,[rip+0x2e98]        # 4151 <_ZStL8__ioinit>
    12b9:	48 8b 05 38 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d38]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    12c0:	48 89 c7             	mov    rdi,rax
    12c3:	e8 c8 fd ff ff       	call   1090 <__cxa_atexit@plt>
    12c8:	90                   	nop
    12c9:	c9                   	leave  
    12ca:	c3                   	ret    

00000000000012cb <_GLOBAL__sub_I__Z3incRi>:
    12cb:	f3 0f 1e fa          	endbr64 
    12cf:	55                   	push   rbp
    12d0:	48 89 e5             	mov    rbp,rsp
    12d3:	be ff ff 00 00       	mov    esi,0xffff
    12d8:	bf 01 00 00 00       	mov    edi,0x1
    12dd:	e8 9c ff ff ff       	call   127e <_Z41__static_initialization_and_destruction_0ii>
    12e2:	5d                   	pop    rbp
    12e3:	c3                   	ret    
    12e4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    12eb:	00 00 00 
    12ee:	66 90                	xchg   ax,ax

00000000000012f0 <__libc_csu_init>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	41 57                	push   r15
    12f6:	4c 8d 3d 73 2a 00 00 	lea    r15,[rip+0x2a73]        # 3d70 <__frame_dummy_init_array_entry>
    12fd:	41 56                	push   r14
    12ff:	49 89 d6             	mov    r14,rdx
    1302:	41 55                	push   r13
    1304:	49 89 f5             	mov    r13,rsi
    1307:	41 54                	push   r12
    1309:	41 89 fc             	mov    r12d,edi
    130c:	55                   	push   rbp
    130d:	48 8d 2d 6c 2a 00 00 	lea    rbp,[rip+0x2a6c]        # 3d80 <__do_global_dtors_aux_fini_array_entry>
    1314:	53                   	push   rbx
    1315:	4c 29 fd             	sub    rbp,r15
    1318:	48 83 ec 08          	sub    rsp,0x8
    131c:	e8 df fc ff ff       	call   1000 <_init>
    1321:	48 c1 fd 03          	sar    rbp,0x3
    1325:	74 1f                	je     1346 <__libc_csu_init+0x56>
    1327:	31 db                	xor    ebx,ebx
    1329:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1330:	4c 89 f2             	mov    rdx,r14
    1333:	4c 89 ee             	mov    rsi,r13
    1336:	44 89 e7             	mov    edi,r12d
    1339:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    133d:	48 83 c3 01          	add    rbx,0x1
    1341:	48 39 dd             	cmp    rbp,rbx
    1344:	75 ea                	jne    1330 <__libc_csu_init+0x40>
    1346:	48 83 c4 08          	add    rsp,0x8
    134a:	5b                   	pop    rbx
    134b:	5d                   	pop    rbp
    134c:	41 5c                	pop    r12
    134e:	41 5d                	pop    r13
    1350:	41 5e                	pop    r14
    1352:	41 5f                	pop    r15
    1354:	c3                   	ret    
    1355:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    135c:	00 00 00 00 

0000000000001360 <__libc_csu_fini>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	c3                   	ret    

セクション .fini の逆アセンブル:

0000000000001368 <_fini>:
    1368:	f3 0f 1e fa          	endbr64 
    136c:	48 83 ec 08          	sub    rsp,0x8
    1370:	48 83 c4 08          	add    rsp,0x8
    1374:	c3                   	ret    
