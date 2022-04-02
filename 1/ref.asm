
ref:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 e9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fe9]        # 403ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret    

セクション .plt の逆アセンブル:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  401030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 404018 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <.plt>

0000000000401040 <_ZNSolsEPKv@plt>:
  401040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 404020 <_ZNSolsEPKv@GLIBCXX_3.4>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <.plt>

0000000000401050 <__cxa_atexit@plt>:
  401050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 404028 <__cxa_atexit@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <.plt>

0000000000401060 <_ZNSolsEPFRSoS_E@plt>:
  401060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 404030 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
  401066:	68 03 00 00 00       	push   0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <.plt>

0000000000401070 <_ZNSt8ios_base4InitC1Ev@plt>:
  401070:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 404038 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  401076:	68 04 00 00 00       	push   0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <.plt>

0000000000401080 <_ZNSolsEi@plt>:
  401080:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 404040 <_ZNSolsEi@GLIBCXX_3.4>
  401086:	68 05 00 00 00       	push   0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <.plt>

0000000000401090 <_ZNSt8ios_base4InitD1Ev@plt>:
  401090:	ff 25 b2 2f 00 00    	jmp    QWORD PTR [rip+0x2fb2]        # 404048 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  401096:	68 06 00 00 00       	push   0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <.plt>

セクション .text の逆アセンブル:

00000000004010a0 <__cxx_global_var_init>:
  4010a0:	55                   	push   rbp
  4010a1:	48 89 e5             	mov    rbp,rsp
  4010a4:	48 83 ec 10          	sub    rsp,0x10
  4010a8:	48 bf 91 41 40 00 00 	movabs rdi,0x404191
  4010af:	00 00 00 
  4010b2:	e8 b9 ff ff ff       	call   401070 <_ZNSt8ios_base4InitC1Ev@plt>
  4010b7:	48 bf 90 10 40 00 00 	movabs rdi,0x401090
  4010be:	00 00 00 
  4010c1:	48 be 91 41 40 00 00 	movabs rsi,0x404191
  4010c8:	00 00 00 
  4010cb:	48 ba 58 40 40 00 00 	movabs rdx,0x404058
  4010d2:	00 00 00 
  4010d5:	e8 76 ff ff ff       	call   401050 <__cxa_atexit@plt>
  4010da:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  4010dd:	48 83 c4 10          	add    rsp,0x10
  4010e1:	5d                   	pop    rbp
  4010e2:	c3                   	ret    
  4010e3:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4010ea:	00 00 00 
  4010ed:	0f 1f 00             	nop    DWORD PTR [rax]

00000000004010f0 <_GLOBAL__sub_I_ref.cpp>:
  4010f0:	55                   	push   rbp
  4010f1:	48 89 e5             	mov    rbp,rsp
  4010f4:	e8 a7 ff ff ff       	call   4010a0 <__cxx_global_var_init>
  4010f9:	5d                   	pop    rbp
  4010fa:	c3                   	ret    
  4010fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401100 <_start>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	31 ed                	xor    ebp,ebp
  401106:	49 89 d1             	mov    r9,rdx
  401109:	5e                   	pop    rsi
  40110a:	48 89 e2             	mov    rdx,rsp
  40110d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401111:	50                   	push   rax
  401112:	54                   	push   rsp
  401113:	49 c7 c0 90 13 40 00 	mov    r8,0x401390
  40111a:	48 c7 c1 20 13 40 00 	mov    rcx,0x401320
  401121:	48 c7 c7 f0 11 40 00 	mov    rdi,0x4011f0
  401128:	ff 15 c2 2e 00 00    	call   QWORD PTR [rip+0x2ec2]        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40112e:	f4                   	hlt    
  40112f:	90                   	nop

0000000000401130 <_dl_relocate_static_pie>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	c3                   	ret    
  401135:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40113c:	00 00 00 
  40113f:	90                   	nop

0000000000401140 <deregister_tm_clones>:
  401140:	b8 60 40 40 00       	mov    eax,0x404060
  401145:	48 3d 60 40 40 00    	cmp    rax,0x404060
  40114b:	74 13                	je     401160 <deregister_tm_clones+0x20>
  40114d:	b8 00 00 00 00       	mov    eax,0x0
  401152:	48 85 c0             	test   rax,rax
  401155:	74 09                	je     401160 <deregister_tm_clones+0x20>
  401157:	bf 60 40 40 00       	mov    edi,0x404060
  40115c:	ff e0                	jmp    rax
  40115e:	66 90                	xchg   ax,ax
  401160:	c3                   	ret    
  401161:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401168:	00 00 00 00 
  40116c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401170 <register_tm_clones>:
  401170:	be 60 40 40 00       	mov    esi,0x404060
  401175:	48 81 ee 60 40 40 00 	sub    rsi,0x404060
  40117c:	48 89 f0             	mov    rax,rsi
  40117f:	48 c1 ee 3f          	shr    rsi,0x3f
  401183:	48 c1 f8 03          	sar    rax,0x3
  401187:	48 01 c6             	add    rsi,rax
  40118a:	48 d1 fe             	sar    rsi,1
  40118d:	74 11                	je     4011a0 <register_tm_clones+0x30>
  40118f:	b8 00 00 00 00       	mov    eax,0x0
  401194:	48 85 c0             	test   rax,rax
  401197:	74 07                	je     4011a0 <register_tm_clones+0x30>
  401199:	bf 60 40 40 00       	mov    edi,0x404060
  40119e:	ff e0                	jmp    rax
  4011a0:	c3                   	ret    
  4011a1:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4011a8:	00 00 00 00 
  4011ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004011b0 <__do_global_dtors_aux>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	80 3d d5 2f 00 00 00 	cmp    BYTE PTR [rip+0x2fd5],0x0        # 404190 <completed.8061>
  4011bb:	75 13                	jne    4011d0 <__do_global_dtors_aux+0x20>
  4011bd:	55                   	push   rbp
  4011be:	48 89 e5             	mov    rbp,rsp
  4011c1:	e8 7a ff ff ff       	call   401140 <deregister_tm_clones>
  4011c6:	c6 05 c3 2f 00 00 01 	mov    BYTE PTR [rip+0x2fc3],0x1        # 404190 <completed.8061>
  4011cd:	5d                   	pop    rbp
  4011ce:	c3                   	ret    
  4011cf:	90                   	nop
  4011d0:	c3                   	ret    
  4011d1:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4011d8:	00 00 00 00 
  4011dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004011e0 <frame_dummy>:
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	eb 8a                	jmp    401170 <register_tm_clones>
  4011e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4011ed:	00 00 00 

00000000004011f0 <main>:
  4011f0:	55                   	push   rbp
  4011f1:	48 89 e5             	mov    rbp,rsp
  4011f4:	48 83 ec 50          	sub    rsp,0x50
  4011f8:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  4011ff:	c7 45 f8 05 00 00 00 	mov    DWORD PTR [rbp-0x8],0x5
  401206:	c7 45 f4 06 00 00 00 	mov    DWORD PTR [rbp-0xc],0x6
  40120d:	48 8d 45 f8          	lea    rax,[rbp-0x8]
  401211:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  401215:	48 8d 45 f4          	lea    rax,[rbp-0xc]
  401219:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  40121d:	8b 75 f8             	mov    esi,DWORD PTR [rbp-0x8]
  401220:	48 bf 80 40 40 00 00 	movabs rdi,0x404080
  401227:	00 00 00 
  40122a:	e8 51 fe ff ff       	call   401080 <_ZNSolsEi@plt>
  40122f:	48 89 c7             	mov    rdi,rax
  401232:	48 be 30 10 40 00 00 	movabs rsi,0x401030
  401239:	00 00 00 
  40123c:	e8 1f fe ff ff       	call   401060 <_ZNSolsEPFRSoS_E@plt>
  401241:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
  401244:	48 bf 80 40 40 00 00 	movabs rdi,0x404080
  40124b:	00 00 00 
  40124e:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  401252:	e8 29 fe ff ff       	call   401080 <_ZNSolsEi@plt>
  401257:	48 89 c7             	mov    rdi,rax
  40125a:	48 be 30 10 40 00 00 	movabs rsi,0x401030
  401261:	00 00 00 
  401264:	e8 f7 fd ff ff       	call   401060 <_ZNSolsEPFRSoS_E@plt>
  401269:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  40126d:	8b 36                	mov    esi,DWORD PTR [rsi]
  40126f:	48 bf 80 40 40 00 00 	movabs rdi,0x404080
  401276:	00 00 00 
  401279:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  40127d:	e8 fe fd ff ff       	call   401080 <_ZNSolsEi@plt>
  401282:	48 89 c7             	mov    rdi,rax
  401285:	48 be 30 10 40 00 00 	movabs rsi,0x401030
  40128c:	00 00 00 
  40128f:	e8 cc fd ff ff       	call   401060 <_ZNSolsEPFRSoS_E@plt>
  401294:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  401298:	8b 36                	mov    esi,DWORD PTR [rsi]
  40129a:	48 bf 80 40 40 00 00 	movabs rdi,0x404080
  4012a1:	00 00 00 
  4012a4:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  4012a8:	e8 d3 fd ff ff       	call   401080 <_ZNSolsEi@plt>
  4012ad:	48 89 c7             	mov    rdi,rax
  4012b0:	48 be 30 10 40 00 00 	movabs rsi,0x401030
  4012b7:	00 00 00 
  4012ba:	e8 a1 fd ff ff       	call   401060 <_ZNSolsEPFRSoS_E@plt>
  4012bf:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  4012c3:	48 bf 80 40 40 00 00 	movabs rdi,0x404080
  4012ca:	00 00 00 
  4012cd:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  4012d1:	e8 6a fd ff ff       	call   401040 <_ZNSolsEPKv@plt>
  4012d6:	48 89 c7             	mov    rdi,rax
  4012d9:	48 be 30 10 40 00 00 	movabs rsi,0x401030
  4012e0:	00 00 00 
  4012e3:	e8 78 fd ff ff       	call   401060 <_ZNSolsEPFRSoS_E@plt>
  4012e8:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  4012ec:	48 bf 80 40 40 00 00 	movabs rdi,0x404080
  4012f3:	00 00 00 
  4012f6:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
  4012fa:	e8 41 fd ff ff       	call   401040 <_ZNSolsEPKv@plt>
  4012ff:	48 89 c7             	mov    rdi,rax
  401302:	48 be 30 10 40 00 00 	movabs rsi,0x401030
  401309:	00 00 00 
  40130c:	e8 4f fd ff ff       	call   401060 <_ZNSolsEPFRSoS_E@plt>
  401311:	31 c9                	xor    ecx,ecx
  401313:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
  401317:	89 c8                	mov    eax,ecx
  401319:	48 83 c4 50          	add    rsp,0x50
  40131d:	5d                   	pop    rbp
  40131e:	c3                   	ret    
  40131f:	90                   	nop

0000000000401320 <__libc_csu_init>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	41 57                	push   r15
  401326:	4c 8d 3d 9b 2a 00 00 	lea    r15,[rip+0x2a9b]        # 403dc8 <__frame_dummy_init_array_entry>
  40132d:	41 56                	push   r14
  40132f:	49 89 d6             	mov    r14,rdx
  401332:	41 55                	push   r13
  401334:	49 89 f5             	mov    r13,rsi
  401337:	41 54                	push   r12
  401339:	41 89 fc             	mov    r12d,edi
  40133c:	55                   	push   rbp
  40133d:	48 8d 2d 94 2a 00 00 	lea    rbp,[rip+0x2a94]        # 403dd8 <__do_global_dtors_aux_fini_array_entry>
  401344:	53                   	push   rbx
  401345:	4c 29 fd             	sub    rbp,r15
  401348:	48 83 ec 08          	sub    rsp,0x8
  40134c:	e8 af fc ff ff       	call   401000 <_init>
  401351:	48 c1 fd 03          	sar    rbp,0x3
  401355:	74 1f                	je     401376 <__libc_csu_init+0x56>
  401357:	31 db                	xor    ebx,ebx
  401359:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401360:	4c 89 f2             	mov    rdx,r14
  401363:	4c 89 ee             	mov    rsi,r13
  401366:	44 89 e7             	mov    edi,r12d
  401369:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  40136d:	48 83 c3 01          	add    rbx,0x1
  401371:	48 39 dd             	cmp    rbp,rbx
  401374:	75 ea                	jne    401360 <__libc_csu_init+0x40>
  401376:	48 83 c4 08          	add    rsp,0x8
  40137a:	5b                   	pop    rbx
  40137b:	5d                   	pop    rbp
  40137c:	41 5c                	pop    r12
  40137e:	41 5d                	pop    r13
  401380:	41 5e                	pop    r14
  401382:	41 5f                	pop    r15
  401384:	c3                   	ret    
  401385:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40138c:	00 00 00 00 

0000000000401390 <__libc_csu_fini>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	c3                   	ret    

セクション .fini の逆アセンブル:

0000000000401398 <_fini>:
  401398:	f3 0f 1e fa          	endbr64 
  40139c:	48 83 ec 08          	sub    rsp,0x8
  4013a0:	48 83 c4 08          	add    rsp,0x8
  4013a4:	c3                   	ret    
