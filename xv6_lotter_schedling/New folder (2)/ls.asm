
_ls:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
  close(fd);
}

int
main(int argc, char *argv[])
{
    1000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1004:	83 e4 f0             	and    $0xfffffff0,%esp
    1007:	ff 71 fc             	pushl  -0x4(%ecx)
    100a:	55                   	push   %ebp
    100b:	89 e5                	mov    %esp,%ebp
    100d:	56                   	push   %esi
    100e:	53                   	push   %ebx
    100f:	51                   	push   %ecx
    1010:	83 ec 0c             	sub    $0xc,%esp
    1013:	8b 01                	mov    (%ecx),%eax
    1015:	8b 51 04             	mov    0x4(%ecx),%edx
  int i;

  if(argc < 2){
    1018:	83 f8 01             	cmp    $0x1,%eax
    101b:	7e 24                	jle    1041 <main+0x41>
    101d:	8d 5a 04             	lea    0x4(%edx),%ebx
    1020:	8d 34 82             	lea    (%edx,%eax,4),%esi
    1023:	90                   	nop
    1024:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
    1028:	83 ec 0c             	sub    $0xc,%esp
    102b:	ff 33                	pushl  (%ebx)
    102d:	83 c3 04             	add    $0x4,%ebx
    1030:	e8 cb 00 00 00       	call   1100 <ls>
  for(i=1; i<argc; i++)
    1035:	83 c4 10             	add    $0x10,%esp
    1038:	39 f3                	cmp    %esi,%ebx
    103a:	75 ec                	jne    1028 <main+0x28>
  exit();
    103c:	e8 cd 06 00 00       	call   170e <exit>
    ls(".");
    1041:	83 ec 0c             	sub    $0xc,%esp
    1044:	68 98 1a 00 00       	push   $0x1a98
    1049:	e8 b2 00 00 00       	call   1100 <ls>
    exit();
    104e:	e8 bb 06 00 00       	call   170e <exit>
    1053:	66 90                	xchg   %ax,%ax
    1055:	66 90                	xchg   %ax,%ax
    1057:	66 90                	xchg   %ax,%ax
    1059:	66 90                	xchg   %ax,%ax
    105b:	66 90                	xchg   %ax,%ax
    105d:	66 90                	xchg   %ax,%ax
    105f:	90                   	nop

00001060 <fmtname>:
{
    1060:	55                   	push   %ebp
    1061:	89 e5                	mov    %esp,%ebp
    1063:	56                   	push   %esi
    1064:	53                   	push   %ebx
    1065:	8b 5d 08             	mov    0x8(%ebp),%ebx
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
    1068:	83 ec 0c             	sub    $0xc,%esp
    106b:	53                   	push   %ebx
    106c:	e8 3f 03 00 00       	call   13b0 <strlen>
    1071:	83 c4 10             	add    $0x10,%esp
    1074:	01 d8                	add    %ebx,%eax
    1076:	73 0f                	jae    1087 <fmtname+0x27>
    1078:	eb 12                	jmp    108c <fmtname+0x2c>
    107a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1080:	83 e8 01             	sub    $0x1,%eax
    1083:	39 c3                	cmp    %eax,%ebx
    1085:	77 05                	ja     108c <fmtname+0x2c>
    1087:	80 38 2f             	cmpb   $0x2f,(%eax)
    108a:	75 f4                	jne    1080 <fmtname+0x20>
  p++;
    108c:	8d 58 01             	lea    0x1(%eax),%ebx
  if(strlen(p) >= DIRSIZ)
    108f:	83 ec 0c             	sub    $0xc,%esp
    1092:	53                   	push   %ebx
    1093:	e8 18 03 00 00       	call   13b0 <strlen>
    1098:	83 c4 10             	add    $0x10,%esp
    109b:	83 f8 0d             	cmp    $0xd,%eax
    109e:	77 4a                	ja     10ea <fmtname+0x8a>
  memmove(buf, p, strlen(p));
    10a0:	83 ec 0c             	sub    $0xc,%esp
    10a3:	53                   	push   %ebx
    10a4:	e8 07 03 00 00       	call   13b0 <strlen>
    10a9:	83 c4 0c             	add    $0xc,%esp
    10ac:	50                   	push   %eax
    10ad:	53                   	push   %ebx
    10ae:	68 c4 1d 00 00       	push   $0x1dc4
    10b3:	e8 98 04 00 00       	call   1550 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
    10b8:	89 1c 24             	mov    %ebx,(%esp)
    10bb:	e8 f0 02 00 00       	call   13b0 <strlen>
    10c0:	89 1c 24             	mov    %ebx,(%esp)
    10c3:	89 c6                	mov    %eax,%esi
  return buf;
    10c5:	bb c4 1d 00 00       	mov    $0x1dc4,%ebx
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
    10ca:	e8 e1 02 00 00       	call   13b0 <strlen>
    10cf:	ba 0e 00 00 00       	mov    $0xe,%edx
    10d4:	83 c4 0c             	add    $0xc,%esp
    10d7:	05 c4 1d 00 00       	add    $0x1dc4,%eax
    10dc:	29 f2                	sub    %esi,%edx
    10de:	52                   	push   %edx
    10df:	6a 20                	push   $0x20
    10e1:	50                   	push   %eax
    10e2:	e8 f9 02 00 00       	call   13e0 <memset>
  return buf;
    10e7:	83 c4 10             	add    $0x10,%esp
}
    10ea:	8d 65 f8             	lea    -0x8(%ebp),%esp
    10ed:	89 d8                	mov    %ebx,%eax
    10ef:	5b                   	pop    %ebx
    10f0:	5e                   	pop    %esi
    10f1:	5d                   	pop    %ebp
    10f2:	c3                   	ret    
    10f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001100 <ls>:
{
    1100:	55                   	push   %ebp
    1101:	89 e5                	mov    %esp,%ebp
    1103:	57                   	push   %edi
    1104:	56                   	push   %esi
    1105:	53                   	push   %ebx
    1106:	81 ec 64 02 00 00    	sub    $0x264,%esp
    110c:	8b 7d 08             	mov    0x8(%ebp),%edi
  if((fd = open(path, 0)) < 0){
    110f:	6a 00                	push   $0x0
    1111:	57                   	push   %edi
    1112:	e8 37 06 00 00       	call   174e <open>
    1117:	83 c4 10             	add    $0x10,%esp
    111a:	85 c0                	test   %eax,%eax
    111c:	78 52                	js     1170 <ls+0x70>
  if(fstat(fd, &st) < 0){
    111e:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
    1124:	83 ec 08             	sub    $0x8,%esp
    1127:	89 c3                	mov    %eax,%ebx
    1129:	56                   	push   %esi
    112a:	50                   	push   %eax
    112b:	e8 36 06 00 00       	call   1766 <fstat>
    1130:	83 c4 10             	add    $0x10,%esp
    1133:	85 c0                	test   %eax,%eax
    1135:	0f 88 c5 00 00 00    	js     1200 <ls+0x100>
  switch(st.type){
    113b:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
    1142:	66 83 f8 01          	cmp    $0x1,%ax
    1146:	0f 84 84 00 00 00    	je     11d0 <ls+0xd0>
    114c:	66 83 f8 02          	cmp    $0x2,%ax
    1150:	74 3e                	je     1190 <ls+0x90>
  close(fd);
    1152:	83 ec 0c             	sub    $0xc,%esp
    1155:	53                   	push   %ebx
    1156:	e8 db 05 00 00       	call   1736 <close>
    115b:	83 c4 10             	add    $0x10,%esp
}
    115e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1161:	5b                   	pop    %ebx
    1162:	5e                   	pop    %esi
    1163:	5f                   	pop    %edi
    1164:	5d                   	pop    %ebp
    1165:	c3                   	ret    
    1166:	8d 76 00             	lea    0x0(%esi),%esi
    1169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(2, "ls: cannot open %s\n", path);
    1170:	83 ec 04             	sub    $0x4,%esp
    1173:	57                   	push   %edi
    1174:	68 50 1a 00 00       	push   $0x1a50
    1179:	6a 02                	push   $0x2
    117b:	e8 e0 06 00 00       	call   1860 <printf>
    return;
    1180:	83 c4 10             	add    $0x10,%esp
}
    1183:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1186:	5b                   	pop    %ebx
    1187:	5e                   	pop    %esi
    1188:	5f                   	pop    %edi
    1189:	5d                   	pop    %ebp
    118a:	c3                   	ret    
    118b:	90                   	nop
    118c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
    1190:	83 ec 0c             	sub    $0xc,%esp
    1193:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
    1199:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
    119f:	57                   	push   %edi
    11a0:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
    11a6:	e8 b5 fe ff ff       	call   1060 <fmtname>
    11ab:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
    11b1:	59                   	pop    %ecx
    11b2:	5f                   	pop    %edi
    11b3:	52                   	push   %edx
    11b4:	56                   	push   %esi
    11b5:	6a 02                	push   $0x2
    11b7:	50                   	push   %eax
    11b8:	68 78 1a 00 00       	push   $0x1a78
    11bd:	6a 01                	push   $0x1
    11bf:	e8 9c 06 00 00       	call   1860 <printf>
    break;
    11c4:	83 c4 20             	add    $0x20,%esp
    11c7:	eb 89                	jmp    1152 <ls+0x52>
    11c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
    11d0:	83 ec 0c             	sub    $0xc,%esp
    11d3:	57                   	push   %edi
    11d4:	e8 d7 01 00 00       	call   13b0 <strlen>
    11d9:	83 c0 10             	add    $0x10,%eax
    11dc:	83 c4 10             	add    $0x10,%esp
    11df:	3d 00 02 00 00       	cmp    $0x200,%eax
    11e4:	76 42                	jbe    1228 <ls+0x128>
      printf(1, "ls: path too long\n");
    11e6:	83 ec 08             	sub    $0x8,%esp
    11e9:	68 85 1a 00 00       	push   $0x1a85
    11ee:	6a 01                	push   $0x1
    11f0:	e8 6b 06 00 00       	call   1860 <printf>
      break;
    11f5:	83 c4 10             	add    $0x10,%esp
    11f8:	e9 55 ff ff ff       	jmp    1152 <ls+0x52>
    11fd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "ls: cannot stat %s\n", path);
    1200:	83 ec 04             	sub    $0x4,%esp
    1203:	57                   	push   %edi
    1204:	68 64 1a 00 00       	push   $0x1a64
    1209:	6a 02                	push   $0x2
    120b:	e8 50 06 00 00       	call   1860 <printf>
    close(fd);
    1210:	89 1c 24             	mov    %ebx,(%esp)
    1213:	e8 1e 05 00 00       	call   1736 <close>
    return;
    1218:	83 c4 10             	add    $0x10,%esp
}
    121b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    121e:	5b                   	pop    %ebx
    121f:	5e                   	pop    %esi
    1220:	5f                   	pop    %edi
    1221:	5d                   	pop    %ebp
    1222:	c3                   	ret    
    1223:	90                   	nop
    1224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    strcpy(buf, path);
    1228:	83 ec 08             	sub    $0x8,%esp
    122b:	57                   	push   %edi
    122c:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
    1232:	57                   	push   %edi
    1233:	e8 f8 00 00 00       	call   1330 <strcpy>
    p = buf+strlen(buf);
    1238:	89 3c 24             	mov    %edi,(%esp)
    123b:	e8 70 01 00 00       	call   13b0 <strlen>
    1240:	01 f8                	add    %edi,%eax
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
    1242:	83 c4 10             	add    $0x10,%esp
    *p++ = '/';
    1245:	8d 48 01             	lea    0x1(%eax),%ecx
    p = buf+strlen(buf);
    1248:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
    *p++ = '/';
    124e:	c6 00 2f             	movb   $0x2f,(%eax)
    1251:	89 8d a4 fd ff ff    	mov    %ecx,-0x25c(%ebp)
    1257:	89 f6                	mov    %esi,%esi
    1259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
    1260:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
    1266:	83 ec 04             	sub    $0x4,%esp
    1269:	6a 10                	push   $0x10
    126b:	50                   	push   %eax
    126c:	53                   	push   %ebx
    126d:	e8 b4 04 00 00       	call   1726 <read>
    1272:	83 c4 10             	add    $0x10,%esp
    1275:	83 f8 10             	cmp    $0x10,%eax
    1278:	0f 85 d4 fe ff ff    	jne    1152 <ls+0x52>
      if(de.inum == 0)
    127e:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
    1285:	00 
    1286:	74 d8                	je     1260 <ls+0x160>
      memmove(p, de.name, DIRSIZ);
    1288:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
    128e:	83 ec 04             	sub    $0x4,%esp
    1291:	6a 0e                	push   $0xe
    1293:	50                   	push   %eax
    1294:	ff b5 a4 fd ff ff    	pushl  -0x25c(%ebp)
    129a:	e8 b1 02 00 00       	call   1550 <memmove>
      p[DIRSIZ] = 0;
    129f:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
    12a5:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
    12a9:	58                   	pop    %eax
    12aa:	5a                   	pop    %edx
    12ab:	56                   	push   %esi
    12ac:	57                   	push   %edi
    12ad:	e8 0e 02 00 00       	call   14c0 <stat>
    12b2:	83 c4 10             	add    $0x10,%esp
    12b5:	85 c0                	test   %eax,%eax
    12b7:	78 5f                	js     1318 <ls+0x218>
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
    12b9:	0f bf 85 d4 fd ff ff 	movswl -0x22c(%ebp),%eax
    12c0:	83 ec 0c             	sub    $0xc,%esp
    12c3:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
    12c9:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
    12cf:	57                   	push   %edi
    12d0:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
    12d6:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
    12dc:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
    12e2:	e8 79 fd ff ff       	call   1060 <fmtname>
    12e7:	5a                   	pop    %edx
    12e8:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
    12ee:	59                   	pop    %ecx
    12ef:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
    12f5:	51                   	push   %ecx
    12f6:	52                   	push   %edx
    12f7:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
    12fd:	50                   	push   %eax
    12fe:	68 78 1a 00 00       	push   $0x1a78
    1303:	6a 01                	push   $0x1
    1305:	e8 56 05 00 00       	call   1860 <printf>
    130a:	83 c4 20             	add    $0x20,%esp
    130d:	e9 4e ff ff ff       	jmp    1260 <ls+0x160>
    1312:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printf(1, "ls: cannot stat %s\n", buf);
    1318:	83 ec 04             	sub    $0x4,%esp
    131b:	57                   	push   %edi
    131c:	68 64 1a 00 00       	push   $0x1a64
    1321:	6a 01                	push   $0x1
    1323:	e8 38 05 00 00       	call   1860 <printf>
        continue;
    1328:	83 c4 10             	add    $0x10,%esp
    132b:	e9 30 ff ff ff       	jmp    1260 <ls+0x160>

00001330 <strcpy>:
#include "user.h"
#include "x86.h"
#define PGSIZE          4096
char*
strcpy(char *s, const char *t)
{
    1330:	55                   	push   %ebp
    1331:	89 e5                	mov    %esp,%ebp
    1333:	53                   	push   %ebx
    1334:	8b 45 08             	mov    0x8(%ebp),%eax
    1337:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    133a:	89 c2                	mov    %eax,%edx
    133c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1340:	83 c1 01             	add    $0x1,%ecx
    1343:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1347:	83 c2 01             	add    $0x1,%edx
    134a:	84 db                	test   %bl,%bl
    134c:	88 5a ff             	mov    %bl,-0x1(%edx)
    134f:	75 ef                	jne    1340 <strcpy+0x10>
    ;
  return os;
}
    1351:	5b                   	pop    %ebx
    1352:	5d                   	pop    %ebp
    1353:	c3                   	ret    
    1354:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    135a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001360 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1360:	55                   	push   %ebp
    1361:	89 e5                	mov    %esp,%ebp
    1363:	53                   	push   %ebx
    1364:	8b 55 08             	mov    0x8(%ebp),%edx
    1367:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    136a:	0f b6 02             	movzbl (%edx),%eax
    136d:	0f b6 19             	movzbl (%ecx),%ebx
    1370:	84 c0                	test   %al,%al
    1372:	75 1c                	jne    1390 <strcmp+0x30>
    1374:	eb 2a                	jmp    13a0 <strcmp+0x40>
    1376:	8d 76 00             	lea    0x0(%esi),%esi
    1379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    1380:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    1383:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    1386:	83 c1 01             	add    $0x1,%ecx
    1389:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    138c:	84 c0                	test   %al,%al
    138e:	74 10                	je     13a0 <strcmp+0x40>
    1390:	38 d8                	cmp    %bl,%al
    1392:	74 ec                	je     1380 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1394:	29 d8                	sub    %ebx,%eax
}
    1396:	5b                   	pop    %ebx
    1397:	5d                   	pop    %ebp
    1398:	c3                   	ret    
    1399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13a0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    13a2:	29 d8                	sub    %ebx,%eax
}
    13a4:	5b                   	pop    %ebx
    13a5:	5d                   	pop    %ebp
    13a6:	c3                   	ret    
    13a7:	89 f6                	mov    %esi,%esi
    13a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000013b0 <strlen>:

uint
strlen(const char *s)
{
    13b0:	55                   	push   %ebp
    13b1:	89 e5                	mov    %esp,%ebp
    13b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    13b6:	80 39 00             	cmpb   $0x0,(%ecx)
    13b9:	74 15                	je     13d0 <strlen+0x20>
    13bb:	31 d2                	xor    %edx,%edx
    13bd:	8d 76 00             	lea    0x0(%esi),%esi
    13c0:	83 c2 01             	add    $0x1,%edx
    13c3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    13c7:	89 d0                	mov    %edx,%eax
    13c9:	75 f5                	jne    13c0 <strlen+0x10>
    ;
  return n;
}
    13cb:	5d                   	pop    %ebp
    13cc:	c3                   	ret    
    13cd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    13d0:	31 c0                	xor    %eax,%eax
}
    13d2:	5d                   	pop    %ebp
    13d3:	c3                   	ret    
    13d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    13da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000013e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    13e0:	55                   	push   %ebp
    13e1:	89 e5                	mov    %esp,%ebp
    13e3:	57                   	push   %edi
    13e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    13e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    13ea:	8b 45 0c             	mov    0xc(%ebp),%eax
    13ed:	89 d7                	mov    %edx,%edi
    13ef:	fc                   	cld    
    13f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    13f2:	89 d0                	mov    %edx,%eax
    13f4:	5f                   	pop    %edi
    13f5:	5d                   	pop    %ebp
    13f6:	c3                   	ret    
    13f7:	89 f6                	mov    %esi,%esi
    13f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001400 <strchr>:

char*
strchr(const char *s, char c)
{
    1400:	55                   	push   %ebp
    1401:	89 e5                	mov    %esp,%ebp
    1403:	53                   	push   %ebx
    1404:	8b 45 08             	mov    0x8(%ebp),%eax
    1407:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    140a:	0f b6 10             	movzbl (%eax),%edx
    140d:	84 d2                	test   %dl,%dl
    140f:	74 1d                	je     142e <strchr+0x2e>
    if(*s == c)
    1411:	38 d3                	cmp    %dl,%bl
    1413:	89 d9                	mov    %ebx,%ecx
    1415:	75 0d                	jne    1424 <strchr+0x24>
    1417:	eb 17                	jmp    1430 <strchr+0x30>
    1419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1420:	38 ca                	cmp    %cl,%dl
    1422:	74 0c                	je     1430 <strchr+0x30>
  for(; *s; s++)
    1424:	83 c0 01             	add    $0x1,%eax
    1427:	0f b6 10             	movzbl (%eax),%edx
    142a:	84 d2                	test   %dl,%dl
    142c:	75 f2                	jne    1420 <strchr+0x20>
      return (char*)s;
  return 0;
    142e:	31 c0                	xor    %eax,%eax
}
    1430:	5b                   	pop    %ebx
    1431:	5d                   	pop    %ebp
    1432:	c3                   	ret    
    1433:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001440 <gets>:

char*
gets(char *buf, int max)
{
    1440:	55                   	push   %ebp
    1441:	89 e5                	mov    %esp,%ebp
    1443:	57                   	push   %edi
    1444:	56                   	push   %esi
    1445:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1446:	31 f6                	xor    %esi,%esi
    1448:	89 f3                	mov    %esi,%ebx
{
    144a:	83 ec 1c             	sub    $0x1c,%esp
    144d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1450:	eb 2f                	jmp    1481 <gets+0x41>
    1452:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1458:	8d 45 e7             	lea    -0x19(%ebp),%eax
    145b:	83 ec 04             	sub    $0x4,%esp
    145e:	6a 01                	push   $0x1
    1460:	50                   	push   %eax
    1461:	6a 00                	push   $0x0
    1463:	e8 be 02 00 00       	call   1726 <read>
    if(cc < 1)
    1468:	83 c4 10             	add    $0x10,%esp
    146b:	85 c0                	test   %eax,%eax
    146d:	7e 1c                	jle    148b <gets+0x4b>
      break;
    buf[i++] = c;
    146f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1473:	83 c7 01             	add    $0x1,%edi
    1476:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1479:	3c 0a                	cmp    $0xa,%al
    147b:	74 23                	je     14a0 <gets+0x60>
    147d:	3c 0d                	cmp    $0xd,%al
    147f:	74 1f                	je     14a0 <gets+0x60>
  for(i=0; i+1 < max; ){
    1481:	83 c3 01             	add    $0x1,%ebx
    1484:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1487:	89 fe                	mov    %edi,%esi
    1489:	7c cd                	jl     1458 <gets+0x18>
    148b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    148d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1490:	c6 03 00             	movb   $0x0,(%ebx)
}
    1493:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1496:	5b                   	pop    %ebx
    1497:	5e                   	pop    %esi
    1498:	5f                   	pop    %edi
    1499:	5d                   	pop    %ebp
    149a:	c3                   	ret    
    149b:	90                   	nop
    149c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14a0:	8b 75 08             	mov    0x8(%ebp),%esi
    14a3:	8b 45 08             	mov    0x8(%ebp),%eax
    14a6:	01 de                	add    %ebx,%esi
    14a8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    14aa:	c6 03 00             	movb   $0x0,(%ebx)
}
    14ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
    14b0:	5b                   	pop    %ebx
    14b1:	5e                   	pop    %esi
    14b2:	5f                   	pop    %edi
    14b3:	5d                   	pop    %ebp
    14b4:	c3                   	ret    
    14b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000014c0 <stat>:

int
stat(const char *n, struct stat *st)
{
    14c0:	55                   	push   %ebp
    14c1:	89 e5                	mov    %esp,%ebp
    14c3:	56                   	push   %esi
    14c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    14c5:	83 ec 08             	sub    $0x8,%esp
    14c8:	6a 00                	push   $0x0
    14ca:	ff 75 08             	pushl  0x8(%ebp)
    14cd:	e8 7c 02 00 00       	call   174e <open>
  if(fd < 0)
    14d2:	83 c4 10             	add    $0x10,%esp
    14d5:	85 c0                	test   %eax,%eax
    14d7:	78 27                	js     1500 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    14d9:	83 ec 08             	sub    $0x8,%esp
    14dc:	ff 75 0c             	pushl  0xc(%ebp)
    14df:	89 c3                	mov    %eax,%ebx
    14e1:	50                   	push   %eax
    14e2:	e8 7f 02 00 00       	call   1766 <fstat>
  close(fd);
    14e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    14ea:	89 c6                	mov    %eax,%esi
  close(fd);
    14ec:	e8 45 02 00 00       	call   1736 <close>
  return r;
    14f1:	83 c4 10             	add    $0x10,%esp
}
    14f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    14f7:	89 f0                	mov    %esi,%eax
    14f9:	5b                   	pop    %ebx
    14fa:	5e                   	pop    %esi
    14fb:	5d                   	pop    %ebp
    14fc:	c3                   	ret    
    14fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1500:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1505:	eb ed                	jmp    14f4 <stat+0x34>
    1507:	89 f6                	mov    %esi,%esi
    1509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001510 <atoi>:

int
atoi(const char *s)
{
    1510:	55                   	push   %ebp
    1511:	89 e5                	mov    %esp,%ebp
    1513:	53                   	push   %ebx
    1514:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1517:	0f be 11             	movsbl (%ecx),%edx
    151a:	8d 42 d0             	lea    -0x30(%edx),%eax
    151d:	3c 09                	cmp    $0x9,%al
  n = 0;
    151f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1524:	77 1f                	ja     1545 <atoi+0x35>
    1526:	8d 76 00             	lea    0x0(%esi),%esi
    1529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1530:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1533:	83 c1 01             	add    $0x1,%ecx
    1536:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    153a:	0f be 11             	movsbl (%ecx),%edx
    153d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1540:	80 fb 09             	cmp    $0x9,%bl
    1543:	76 eb                	jbe    1530 <atoi+0x20>
  return n;
}
    1545:	5b                   	pop    %ebx
    1546:	5d                   	pop    %ebp
    1547:	c3                   	ret    
    1548:	90                   	nop
    1549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001550 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1550:	55                   	push   %ebp
    1551:	89 e5                	mov    %esp,%ebp
    1553:	56                   	push   %esi
    1554:	53                   	push   %ebx
    1555:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1558:	8b 45 08             	mov    0x8(%ebp),%eax
    155b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    155e:	85 db                	test   %ebx,%ebx
    1560:	7e 14                	jle    1576 <memmove+0x26>
    1562:	31 d2                	xor    %edx,%edx
    1564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1568:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    156c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    156f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1572:	39 d3                	cmp    %edx,%ebx
    1574:	75 f2                	jne    1568 <memmove+0x18>
  return vdst;
}
    1576:	5b                   	pop    %ebx
    1577:	5e                   	pop    %esi
    1578:	5d                   	pop    %ebp
    1579:	c3                   	ret    
    157a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001580 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1580:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1581:	a1 d4 1d 00 00       	mov    0x1dd4,%eax
{
    1586:	89 e5                	mov    %esp,%ebp
    1588:	57                   	push   %edi
    1589:	56                   	push   %esi
    158a:	53                   	push   %ebx
    158b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    158e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    1591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1598:	39 c8                	cmp    %ecx,%eax
    159a:	8b 10                	mov    (%eax),%edx
    159c:	73 32                	jae    15d0 <free+0x50>
    159e:	39 d1                	cmp    %edx,%ecx
    15a0:	72 04                	jb     15a6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    15a2:	39 d0                	cmp    %edx,%eax
    15a4:	72 32                	jb     15d8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    15a6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    15a9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    15ac:	39 fa                	cmp    %edi,%edx
    15ae:	74 30                	je     15e0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    15b0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    15b3:	8b 50 04             	mov    0x4(%eax),%edx
    15b6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    15b9:	39 f1                	cmp    %esi,%ecx
    15bb:	74 3a                	je     15f7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    15bd:	89 08                	mov    %ecx,(%eax)
  freep = p;
    15bf:	a3 d4 1d 00 00       	mov    %eax,0x1dd4
}
    15c4:	5b                   	pop    %ebx
    15c5:	5e                   	pop    %esi
    15c6:	5f                   	pop    %edi
    15c7:	5d                   	pop    %ebp
    15c8:	c3                   	ret    
    15c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    15d0:	39 d0                	cmp    %edx,%eax
    15d2:	72 04                	jb     15d8 <free+0x58>
    15d4:	39 d1                	cmp    %edx,%ecx
    15d6:	72 ce                	jb     15a6 <free+0x26>
{
    15d8:	89 d0                	mov    %edx,%eax
    15da:	eb bc                	jmp    1598 <free+0x18>
    15dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    15e0:	03 72 04             	add    0x4(%edx),%esi
    15e3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    15e6:	8b 10                	mov    (%eax),%edx
    15e8:	8b 12                	mov    (%edx),%edx
    15ea:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    15ed:	8b 50 04             	mov    0x4(%eax),%edx
    15f0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    15f3:	39 f1                	cmp    %esi,%ecx
    15f5:	75 c6                	jne    15bd <free+0x3d>
    p->s.size += bp->s.size;
    15f7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    15fa:	a3 d4 1d 00 00       	mov    %eax,0x1dd4
    p->s.size += bp->s.size;
    15ff:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1602:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1605:	89 10                	mov    %edx,(%eax)
}
    1607:	5b                   	pop    %ebx
    1608:	5e                   	pop    %esi
    1609:	5f                   	pop    %edi
    160a:	5d                   	pop    %ebp
    160b:	c3                   	ret    
    160c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001610 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1610:	55                   	push   %ebp
    1611:	89 e5                	mov    %esp,%ebp
    1613:	57                   	push   %edi
    1614:	56                   	push   %esi
    1615:	53                   	push   %ebx
    1616:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1619:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    161c:	8b 15 d4 1d 00 00    	mov    0x1dd4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1622:	8d 78 07             	lea    0x7(%eax),%edi
    1625:	c1 ef 03             	shr    $0x3,%edi
    1628:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    162b:	85 d2                	test   %edx,%edx
    162d:	0f 84 9d 00 00 00    	je     16d0 <malloc+0xc0>
    1633:	8b 02                	mov    (%edx),%eax
    1635:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1638:	39 cf                	cmp    %ecx,%edi
    163a:	76 6c                	jbe    16a8 <malloc+0x98>
    163c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1642:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1647:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    164a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1651:	eb 0e                	jmp    1661 <malloc+0x51>
    1653:	90                   	nop
    1654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1658:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    165a:	8b 48 04             	mov    0x4(%eax),%ecx
    165d:	39 f9                	cmp    %edi,%ecx
    165f:	73 47                	jae    16a8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1661:	39 05 d4 1d 00 00    	cmp    %eax,0x1dd4
    1667:	89 c2                	mov    %eax,%edx
    1669:	75 ed                	jne    1658 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    166b:	83 ec 0c             	sub    $0xc,%esp
    166e:	56                   	push   %esi
    166f:	e8 22 01 00 00       	call   1796 <sbrk>
  if(p == (char*)-1)
    1674:	83 c4 10             	add    $0x10,%esp
    1677:	83 f8 ff             	cmp    $0xffffffff,%eax
    167a:	74 1c                	je     1698 <malloc+0x88>
  hp->s.size = nu;
    167c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    167f:	83 ec 0c             	sub    $0xc,%esp
    1682:	83 c0 08             	add    $0x8,%eax
    1685:	50                   	push   %eax
    1686:	e8 f5 fe ff ff       	call   1580 <free>
  return freep;
    168b:	8b 15 d4 1d 00 00    	mov    0x1dd4,%edx
      if((p = morecore(nunits)) == 0)
    1691:	83 c4 10             	add    $0x10,%esp
    1694:	85 d2                	test   %edx,%edx
    1696:	75 c0                	jne    1658 <malloc+0x48>
        return 0;
  }
}
    1698:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    169b:	31 c0                	xor    %eax,%eax
}
    169d:	5b                   	pop    %ebx
    169e:	5e                   	pop    %esi
    169f:	5f                   	pop    %edi
    16a0:	5d                   	pop    %ebp
    16a1:	c3                   	ret    
    16a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    16a8:	39 cf                	cmp    %ecx,%edi
    16aa:	74 54                	je     1700 <malloc+0xf0>
        p->s.size -= nunits;
    16ac:	29 f9                	sub    %edi,%ecx
    16ae:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    16b1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    16b4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    16b7:	89 15 d4 1d 00 00    	mov    %edx,0x1dd4
}
    16bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    16c0:	83 c0 08             	add    $0x8,%eax
}
    16c3:	5b                   	pop    %ebx
    16c4:	5e                   	pop    %esi
    16c5:	5f                   	pop    %edi
    16c6:	5d                   	pop    %ebp
    16c7:	c3                   	ret    
    16c8:	90                   	nop
    16c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    16d0:	c7 05 d4 1d 00 00 d8 	movl   $0x1dd8,0x1dd4
    16d7:	1d 00 00 
    16da:	c7 05 d8 1d 00 00 d8 	movl   $0x1dd8,0x1dd8
    16e1:	1d 00 00 
    base.s.size = 0;
    16e4:	b8 d8 1d 00 00       	mov    $0x1dd8,%eax
    16e9:	c7 05 dc 1d 00 00 00 	movl   $0x0,0x1ddc
    16f0:	00 00 00 
    16f3:	e9 44 ff ff ff       	jmp    163c <malloc+0x2c>
    16f8:	90                   	nop
    16f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1700:	8b 08                	mov    (%eax),%ecx
    1702:	89 0a                	mov    %ecx,(%edx)
    1704:	eb b1                	jmp    16b7 <malloc+0xa7>

00001706 <fork>:
    1706:	b8 01 00 00 00       	mov    $0x1,%eax
    170b:	cd 40                	int    $0x40
    170d:	c3                   	ret    

0000170e <exit>:
    170e:	b8 02 00 00 00       	mov    $0x2,%eax
    1713:	cd 40                	int    $0x40
    1715:	c3                   	ret    

00001716 <wait>:
    1716:	b8 03 00 00 00       	mov    $0x3,%eax
    171b:	cd 40                	int    $0x40
    171d:	c3                   	ret    

0000171e <pipe>:
    171e:	b8 04 00 00 00       	mov    $0x4,%eax
    1723:	cd 40                	int    $0x40
    1725:	c3                   	ret    

00001726 <read>:
    1726:	b8 05 00 00 00       	mov    $0x5,%eax
    172b:	cd 40                	int    $0x40
    172d:	c3                   	ret    

0000172e <write>:
    172e:	b8 10 00 00 00       	mov    $0x10,%eax
    1733:	cd 40                	int    $0x40
    1735:	c3                   	ret    

00001736 <close>:
    1736:	b8 15 00 00 00       	mov    $0x15,%eax
    173b:	cd 40                	int    $0x40
    173d:	c3                   	ret    

0000173e <kill>:
    173e:	b8 06 00 00 00       	mov    $0x6,%eax
    1743:	cd 40                	int    $0x40
    1745:	c3                   	ret    

00001746 <exec>:
    1746:	b8 07 00 00 00       	mov    $0x7,%eax
    174b:	cd 40                	int    $0x40
    174d:	c3                   	ret    

0000174e <open>:
    174e:	b8 0f 00 00 00       	mov    $0xf,%eax
    1753:	cd 40                	int    $0x40
    1755:	c3                   	ret    

00001756 <mknod>:
    1756:	b8 11 00 00 00       	mov    $0x11,%eax
    175b:	cd 40                	int    $0x40
    175d:	c3                   	ret    

0000175e <unlink>:
    175e:	b8 12 00 00 00       	mov    $0x12,%eax
    1763:	cd 40                	int    $0x40
    1765:	c3                   	ret    

00001766 <fstat>:
    1766:	b8 08 00 00 00       	mov    $0x8,%eax
    176b:	cd 40                	int    $0x40
    176d:	c3                   	ret    

0000176e <link>:
    176e:	b8 13 00 00 00       	mov    $0x13,%eax
    1773:	cd 40                	int    $0x40
    1775:	c3                   	ret    

00001776 <mkdir>:
    1776:	b8 14 00 00 00       	mov    $0x14,%eax
    177b:	cd 40                	int    $0x40
    177d:	c3                   	ret    

0000177e <chdir>:
    177e:	b8 09 00 00 00       	mov    $0x9,%eax
    1783:	cd 40                	int    $0x40
    1785:	c3                   	ret    

00001786 <dup>:
    1786:	b8 0a 00 00 00       	mov    $0xa,%eax
    178b:	cd 40                	int    $0x40
    178d:	c3                   	ret    

0000178e <getpid>:
    178e:	b8 0b 00 00 00       	mov    $0xb,%eax
    1793:	cd 40                	int    $0x40
    1795:	c3                   	ret    

00001796 <sbrk>:
    1796:	b8 0c 00 00 00       	mov    $0xc,%eax
    179b:	cd 40                	int    $0x40
    179d:	c3                   	ret    

0000179e <sleep>:
    179e:	b8 0d 00 00 00       	mov    $0xd,%eax
    17a3:	cd 40                	int    $0x40
    17a5:	c3                   	ret    

000017a6 <uptime>:
    17a6:	b8 0e 00 00 00       	mov    $0xe,%eax
    17ab:	cd 40                	int    $0x40
    17ad:	c3                   	ret    

000017ae <settickets>:
    17ae:	b8 16 00 00 00       	mov    $0x16,%eax
    17b3:	cd 40                	int    $0x40
    17b5:	c3                   	ret    

000017b6 <getpinfo>:
    17b6:	b8 17 00 00 00       	mov    $0x17,%eax
    17bb:	cd 40                	int    $0x40
    17bd:	c3                   	ret    
    17be:	66 90                	xchg   %ax,%ax

000017c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    17c0:	55                   	push   %ebp
    17c1:	89 e5                	mov    %esp,%ebp
    17c3:	57                   	push   %edi
    17c4:	56                   	push   %esi
    17c5:	53                   	push   %ebx
    17c6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    17c9:	85 d2                	test   %edx,%edx
{
    17cb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    17ce:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    17d0:	79 76                	jns    1848 <printint+0x88>
    17d2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    17d6:	74 70                	je     1848 <printint+0x88>
    x = -xx;
    17d8:	f7 d8                	neg    %eax
    neg = 1;
    17da:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    17e1:	31 f6                	xor    %esi,%esi
    17e3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    17e6:	eb 0a                	jmp    17f2 <printint+0x32>
    17e8:	90                   	nop
    17e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    17f0:	89 fe                	mov    %edi,%esi
    17f2:	31 d2                	xor    %edx,%edx
    17f4:	8d 7e 01             	lea    0x1(%esi),%edi
    17f7:	f7 f1                	div    %ecx
    17f9:	0f b6 92 a4 1a 00 00 	movzbl 0x1aa4(%edx),%edx
  }while((x /= base) != 0);
    1800:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1802:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1805:	75 e9                	jne    17f0 <printint+0x30>
  if(neg)
    1807:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    180a:	85 c0                	test   %eax,%eax
    180c:	74 08                	je     1816 <printint+0x56>
    buf[i++] = '-';
    180e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    1813:	8d 7e 02             	lea    0x2(%esi),%edi
    1816:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    181a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    181d:	8d 76 00             	lea    0x0(%esi),%esi
    1820:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    1823:	83 ec 04             	sub    $0x4,%esp
    1826:	83 ee 01             	sub    $0x1,%esi
    1829:	6a 01                	push   $0x1
    182b:	53                   	push   %ebx
    182c:	57                   	push   %edi
    182d:	88 45 d7             	mov    %al,-0x29(%ebp)
    1830:	e8 f9 fe ff ff       	call   172e <write>

  while(--i >= 0)
    1835:	83 c4 10             	add    $0x10,%esp
    1838:	39 de                	cmp    %ebx,%esi
    183a:	75 e4                	jne    1820 <printint+0x60>
    putc(fd, buf[i]);
}
    183c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    183f:	5b                   	pop    %ebx
    1840:	5e                   	pop    %esi
    1841:	5f                   	pop    %edi
    1842:	5d                   	pop    %ebp
    1843:	c3                   	ret    
    1844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1848:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    184f:	eb 90                	jmp    17e1 <printint+0x21>
    1851:	eb 0d                	jmp    1860 <printf>
    1853:	90                   	nop
    1854:	90                   	nop
    1855:	90                   	nop
    1856:	90                   	nop
    1857:	90                   	nop
    1858:	90                   	nop
    1859:	90                   	nop
    185a:	90                   	nop
    185b:	90                   	nop
    185c:	90                   	nop
    185d:	90                   	nop
    185e:	90                   	nop
    185f:	90                   	nop

00001860 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
// bdg 10/05/2015: Add %l
void
printf(int fd, const char *fmt, ...)
{
    1860:	55                   	push   %ebp
    1861:	89 e5                	mov    %esp,%ebp
    1863:	57                   	push   %edi
    1864:	56                   	push   %esi
    1865:	53                   	push   %ebx
    1866:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1869:	8b 75 0c             	mov    0xc(%ebp),%esi
    186c:	0f b6 1e             	movzbl (%esi),%ebx
    186f:	84 db                	test   %bl,%bl
    1871:	0f 84 bf 00 00 00    	je     1936 <printf+0xd6>
    1877:	83 c6 01             	add    $0x1,%esi
  ap = (uint*)(void*)&fmt + 1;
    187a:	8d 7d 10             	lea    0x10(%ebp),%edi
  state = 0;
    187d:	31 d2                	xor    %edx,%edx
    187f:	eb 39                	jmp    18ba <printf+0x5a>
    1881:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1888:	83 f8 25             	cmp    $0x25,%eax
    188b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    188e:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1893:	74 1a                	je     18af <printf+0x4f>
  write(fd, &c, 1);
    1895:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1898:	83 ec 04             	sub    $0x4,%esp
    189b:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    189e:	6a 01                	push   $0x1
    18a0:	50                   	push   %eax
    18a1:	ff 75 08             	pushl  0x8(%ebp)
    18a4:	e8 85 fe ff ff       	call   172e <write>
    18a9:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    18ac:	83 c4 10             	add    $0x10,%esp
    18af:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    18b2:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    18b6:	84 db                	test   %bl,%bl
    18b8:	74 7c                	je     1936 <printf+0xd6>
    if(state == 0){
    18ba:	85 d2                	test   %edx,%edx
    c = fmt[i] & 0xff;
    18bc:	0f be cb             	movsbl %bl,%ecx
    18bf:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    18c2:	74 c4                	je     1888 <printf+0x28>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    18c4:	83 fa 25             	cmp    $0x25,%edx
    18c7:	75 e6                	jne    18af <printf+0x4f>
      if(c == 'd'){
    18c9:	83 f8 64             	cmp    $0x64,%eax
    18cc:	0f 84 a6 00 00 00    	je     1978 <printf+0x118>
        printint(fd, *ap, 10, 1);
        ap++;
        } else if(c == 'l') {
    18d2:	83 f8 6c             	cmp    $0x6c,%eax
    18d5:	0f 84 ad 00 00 00    	je     1988 <printf+0x128>
        printlong(fd, *(unsigned long long *)ap, 10, 0);
        // long longs take up 2 argument slots
        ap++;
        ap++;
      } else if(c == 'x' || c == 'p'){
    18db:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    18e1:	83 f9 70             	cmp    $0x70,%ecx
    18e4:	74 5a                	je     1940 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    18e6:	83 f8 73             	cmp    $0x73,%eax
    18e9:	0f 84 e1 00 00 00    	je     19d0 <printf+0x170>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    18ef:	83 f8 63             	cmp    $0x63,%eax
    18f2:	0f 84 28 01 00 00    	je     1a20 <printf+0x1c0>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    18f8:	83 f8 25             	cmp    $0x25,%eax
    18fb:	74 6b                	je     1968 <printf+0x108>
  write(fd, &c, 1);
    18fd:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1900:	83 ec 04             	sub    $0x4,%esp
    1903:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1907:	6a 01                	push   $0x1
    1909:	50                   	push   %eax
    190a:	ff 75 08             	pushl  0x8(%ebp)
    190d:	e8 1c fe ff ff       	call   172e <write>
    1912:	83 c4 0c             	add    $0xc,%esp
    1915:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    1918:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    191b:	6a 01                	push   $0x1
    191d:	50                   	push   %eax
    191e:	ff 75 08             	pushl  0x8(%ebp)
    1921:	83 c6 01             	add    $0x1,%esi
    1924:	e8 05 fe ff ff       	call   172e <write>
  for(i = 0; fmt[i]; i++){
    1929:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    192d:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1930:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    1932:	84 db                	test   %bl,%bl
    1934:	75 84                	jne    18ba <printf+0x5a>
    }
  }
}
    1936:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1939:	5b                   	pop    %ebx
    193a:	5e                   	pop    %esi
    193b:	5f                   	pop    %edi
    193c:	5d                   	pop    %ebp
    193d:	c3                   	ret    
    193e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1940:	83 ec 0c             	sub    $0xc,%esp
    1943:	b9 10 00 00 00       	mov    $0x10,%ecx
    1948:	6a 00                	push   $0x0
    194a:	8b 17                	mov    (%edi),%edx
    194c:	8b 45 08             	mov    0x8(%ebp),%eax
        ap++;
    194f:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 16, 0);
    1952:	e8 69 fe ff ff       	call   17c0 <printint>
    1957:	83 c4 10             	add    $0x10,%esp
      state = 0;
    195a:	31 d2                	xor    %edx,%edx
    195c:	e9 4e ff ff ff       	jmp    18af <printf+0x4f>
    1961:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    1968:	83 ec 04             	sub    $0x4,%esp
    196b:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    196e:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1971:	6a 01                	push   $0x1
    1973:	eb a8                	jmp    191d <printf+0xbd>
    1975:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    1978:	83 ec 0c             	sub    $0xc,%esp
    197b:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1980:	6a 01                	push   $0x1
    1982:	eb c6                	jmp    194a <printf+0xea>
    1984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printlong(fd, *(unsigned long long *)ap, 10, 0);
    1988:	8b 57 04             	mov    0x4(%edi),%edx
    198b:	8b 1f                	mov    (%edi),%ebx
    if(upper) printint(fd, upper, 16, 0);
    198d:	85 d2                	test   %edx,%edx
    198f:	74 15                	je     19a6 <printf+0x146>
    1991:	83 ec 0c             	sub    $0xc,%esp
    1994:	8b 45 08             	mov    0x8(%ebp),%eax
    1997:	b9 10 00 00 00       	mov    $0x10,%ecx
    199c:	6a 00                	push   $0x0
    199e:	e8 1d fe ff ff       	call   17c0 <printint>
    19a3:	83 c4 10             	add    $0x10,%esp
    printint(fd, lower, 16, 0);
    19a6:	83 ec 0c             	sub    $0xc,%esp
    19a9:	8b 45 08             	mov    0x8(%ebp),%eax
    19ac:	89 da                	mov    %ebx,%edx
    19ae:	6a 00                	push   $0x0
    19b0:	b9 10 00 00 00       	mov    $0x10,%ecx
        ap++;
    19b5:	83 c7 08             	add    $0x8,%edi
    printint(fd, lower, 16, 0);
    19b8:	e8 03 fe ff ff       	call   17c0 <printint>
    19bd:	83 c4 10             	add    $0x10,%esp
      state = 0;
    19c0:	31 d2                	xor    %edx,%edx
    19c2:	e9 e8 fe ff ff       	jmp    18af <printf+0x4f>
    19c7:	89 f6                	mov    %esi,%esi
    19c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
        s = (char*)*ap;
    19d0:	8b 0f                	mov    (%edi),%ecx
        ap++;
    19d2:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
    19d5:	85 c9                	test   %ecx,%ecx
    19d7:	74 6a                	je     1a43 <printf+0x1e3>
        while(*s != 0){
    19d9:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    19dc:	31 d2                	xor    %edx,%edx
        s = (char*)*ap;
    19de:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    19e0:	84 c0                	test   %al,%al
    19e2:	0f 84 c7 fe ff ff    	je     18af <printf+0x4f>
    19e8:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    19eb:	89 de                	mov    %ebx,%esi
    19ed:	8b 5d 08             	mov    0x8(%ebp),%ebx
    19f0:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    19f3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    19f6:	83 ec 04             	sub    $0x4,%esp
    19f9:	6a 01                	push   $0x1
          s++;
    19fb:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    19fe:	50                   	push   %eax
    19ff:	53                   	push   %ebx
    1a00:	e8 29 fd ff ff       	call   172e <write>
        while(*s != 0){
    1a05:	0f b6 06             	movzbl (%esi),%eax
    1a08:	83 c4 10             	add    $0x10,%esp
    1a0b:	84 c0                	test   %al,%al
    1a0d:	75 e1                	jne    19f0 <printf+0x190>
    1a0f:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    1a12:	31 d2                	xor    %edx,%edx
    1a14:	e9 96 fe ff ff       	jmp    18af <printf+0x4f>
    1a19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1a20:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1a22:	83 ec 04             	sub    $0x4,%esp
        ap++;
    1a25:	83 c7 04             	add    $0x4,%edi
  write(fd, &c, 1);
    1a28:	6a 01                	push   $0x1
        putc(fd, *ap);
    1a2a:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1a2d:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1a30:	50                   	push   %eax
    1a31:	ff 75 08             	pushl  0x8(%ebp)
    1a34:	e8 f5 fc ff ff       	call   172e <write>
    1a39:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1a3c:	31 d2                	xor    %edx,%edx
    1a3e:	e9 6c fe ff ff       	jmp    18af <printf+0x4f>
          s = "(null)";
    1a43:	bb 9a 1a 00 00       	mov    $0x1a9a,%ebx
        while(*s != 0){
    1a48:	b8 28 00 00 00       	mov    $0x28,%eax
    1a4d:	eb 99                	jmp    19e8 <printf+0x188>
