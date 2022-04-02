
hello:     ファイル形式 elf64-x86-64


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

0000000000401030 <__cxa_atexit@plt>:
  401030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 404018 <__cxa_atexit@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <.plt>

0000000000401040 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  401040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 404020 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <.plt>

0000000000401050 <_ZNSt8ios_base4InitC1Ev@plt>:
  401050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 404028 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  401056:	68 02 00 00 00       	push   0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <.plt>

0000000000401060 <_ZNSt8ios_base4InitD1Ev@plt>:
  401060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 404030 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  401066:	68 03 00 00 00       	push   0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <.plt>

セクション .text の逆アセンブル:

0000000000401070 <__cxx_global_var_init>:
  401070:	55                   	push   rbp
  401071:	48 89 e5             	mov    rbp,rsp
  401074:	48 83 ec 10          	sub    rsp,0x10
  401078:	48 bf 91 41 40 00 00 	movabs rdi,0x404191
  40107f:	00 00 00 
  401082:	e8 c9 ff ff ff       	call   401050 <_ZNSt8ios_base4InitC1Ev@plt>
  401087:	48 bf 60 10 40 00 00 	movabs rdi,0x401060
  40108e:	00 00 00 
  401091:	48 be 91 41 40 00 00 	movabs rsi,0x404191
  401098:	00 00 00 
  40109b:	48 ba 40 40 40 00 00 	movabs rdx,0x404040
  4010a2:	00 00 00 
  4010a5:	e8 86 ff ff ff       	call   401030 <__cxa_atexit@plt>
  4010aa:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  4010ad:	48 83 c4 10          	add    rsp,0x10
  4010b1:	5d                   	pop    rbp
  4010b2:	c3                   	ret    
  4010b3:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4010ba:	00 00 00 
  4010bd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000004010c0 <_GLOBAL__sub_I_hello.cpp>:
  4010c0:	55                   	push   rbp
  4010c1:	48 89 e5             	mov    rbp,rsp
  4010c4:	e8 a7 ff ff ff       	call   401070 <__cxx_global_var_init>
  4010c9:	5d                   	pop    rbp
  4010ca:	c3                   	ret    
  4010cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010d0 <_start>:
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	31 ed                	xor    ebp,ebp
  4010d6:	49 89 d1             	mov    r9,rdx
  4010d9:	5e                   	pop    rsi
  4010da:	48 89 e2             	mov    rdx,rsp
  4010dd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4010e1:	50                   	push   rax
  4010e2:	54                   	push   rsp
  4010e3:	49 c7 c0 70 12 40 00 	mov    r8,0x401270
  4010ea:	48 c7 c1 00 12 40 00 	mov    rcx,0x401200
  4010f1:	48 c7 c7 c0 11 40 00 	mov    rdi,0x4011c0
  4010f8:	ff 15 f2 2e 00 00    	call   QWORD PTR [rip+0x2ef2]        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  4010fe:	f4                   	hlt    
  4010ff:	90                   	nop

0000000000401100 <_dl_relocate_static_pie>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	c3                   	ret    
  401105:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40110c:	00 00 00 
  40110f:	90                   	nop

0000000000401110 <deregister_tm_clones>:
  401110:	b8 48 40 40 00       	mov    eax,0x404048
  401115:	48 3d 48 40 40 00    	cmp    rax,0x404048
  40111b:	74 13                	je     401130 <deregister_tm_clones+0x20>
  40111d:	b8 00 00 00 00       	mov    eax,0x0
  401122:	48 85 c0             	test   rax,rax
  401125:	74 09                	je     401130 <deregister_tm_clones+0x20>
  401127:	bf 48 40 40 00       	mov    edi,0x404048
  40112c:	ff e0                	jmp    rax
  40112e:	66 90                	xchg   ax,ax
  401130:	c3                   	ret    
  401131:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401138:	00 00 00 00 
  40113c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401140 <register_tm_clones>:
  401140:	be 48 40 40 00       	mov    esi,0x404048
  401145:	48 81 ee 48 40 40 00 	sub    rsi,0x404048
  40114c:	48 89 f0             	mov    rax,rsi
  40114f:	48 c1 ee 3f          	shr    rsi,0x3f
  401153:	48 c1 f8 03          	sar    rax,0x3
  401157:	48 01 c6             	add    rsi,rax
  40115a:	48 d1 fe             	sar    rsi,1
  40115d:	74 11                	je     401170 <register_tm_clones+0x30>
  40115f:	b8 00 00 00 00       	mov    eax,0x0
  401164:	48 85 c0             	test   rax,rax
  401167:	74 07                	je     401170 <register_tm_clones+0x30>
  401169:	bf 48 40 40 00       	mov    edi,0x404048
  40116e:	ff e0                	jmp    rax
  401170:	c3                   	ret    
  401171:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401178:	00 00 00 00 
  40117c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401180 <__do_global_dtors_aux>:
  401180:	f3 0f 1e fa          	endbr64 
  401184:	80 3d 05 30 00 00 00 	cmp    BYTE PTR [rip+0x3005],0x0        # 404190 <completed.8061>
  40118b:	75 13                	jne    4011a0 <__do_global_dtors_aux+0x20>
  40118d:	55                   	push   rbp
  40118e:	48 89 e5             	mov    rbp,rsp
  401191:	e8 7a ff ff ff       	call   401110 <deregister_tm_clones>
  401196:	c6 05 f3 2f 00 00 01 	mov    BYTE PTR [rip+0x2ff3],0x1        # 404190 <completed.8061>
  40119d:	5d                   	pop    rbp
  40119e:	c3                   	ret    
  40119f:	90                   	nop
  4011a0:	c3                   	ret    
  4011a1:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4011a8:	00 00 00 00 
  4011ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004011b0 <frame_dummy>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	eb 8a                	jmp    401140 <register_tm_clones>
  4011b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4011bd:	00 00 00 

00000000004011c0 <main>:
  4011c0:	55                   	push   rbp
  4011c1:	48 89 e5             	mov    rbp,rsp
  4011c4:	48 83 ec 10          	sub    rsp,0x10
  4011c8:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  4011cf:	48 bf 80 40 40 00 00 	movabs rdi,0x404080
  4011d6:	00 00 00 
  4011d9:	48 be 04 20 40 00 00 	movabs rsi,0x402004
  4011e0:	00 00 00 
  4011e3:	e8 58 fe ff ff       	call   401040 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4011e8:	31 c9                	xor    ecx,ecx
  4011ea:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4011ee:	89 c8                	mov    eax,ecx
  4011f0:	48 83 c4 10          	add    rsp,0x10
  4011f4:	5d                   	pop    rbp
  4011f5:	c3                   	ret    
  4011f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4011fd:	00 00 00 

0000000000401200 <__libc_csu_init>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	41 57                	push   r15
  401206:	4c 8d 3d bb 2b 00 00 	lea    r15,[rip+0x2bbb]        # 403dc8 <__frame_dummy_init_array_entry>
  40120d:	41 56                	push   r14
  40120f:	49 89 d6             	mov    r14,rdx
  401212:	41 55                	push   r13
  401214:	49 89 f5             	mov    r13,rsi
  401217:	41 54                	push   r12
  401219:	41 89 fc             	mov    r12d,edi
  40121c:	55                   	push   rbp
  40121d:	48 8d 2d b4 2b 00 00 	lea    rbp,[rip+0x2bb4]        # 403dd8 <__do_global_dtors_aux_fini_array_entry>
  401224:	53                   	push   rbx
  401225:	4c 29 fd             	sub    rbp,r15
  401228:	48 83 ec 08          	sub    rsp,0x8
  40122c:	e8 cf fd ff ff       	call   401000 <_init>
  401231:	48 c1 fd 03          	sar    rbp,0x3
  401235:	74 1f                	je     401256 <__libc_csu_init+0x56>
  401237:	31 db                	xor    ebx,ebx
  401239:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401240:	4c 89 f2             	mov    rdx,r14
  401243:	4c 89 ee             	mov    rsi,r13
  401246:	44 89 e7             	mov    edi,r12d
  401249:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  40124d:	48 83 c3 01          	add    rbx,0x1
  401251:	48 39 dd             	cmp    rbp,rbx
  401254:	75 ea                	jne    401240 <__libc_csu_init+0x40>
  401256:	48 83 c4 08          	add    rsp,0x8
  40125a:	5b                   	pop    rbx
  40125b:	5d                   	pop    rbp
  40125c:	41 5c                	pop    r12
  40125e:	41 5d                	pop    r13
  401260:	41 5e                	pop    r14
  401262:	41 5f                	pop    r15
  401264:	c3                   	ret    
  401265:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40126c:	00 00 00 00 

0000000000401270 <__libc_csu_fini>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	c3                   	ret    

セクション .fini の逆アセンブル:

0000000000401278 <_fini>:
  401278:	f3 0f 1e fa          	endbr64 
  40127c:	48 83 ec 08          	sub    rsp,0x8
  401280:	48 83 c4 08          	add    rsp,0x8
  401284:	c3                   	ret    
