''
''
'' sys\socket -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __crt_sys_socket_bi__
#define __crt_sys_socket_bi__

#include once "crt/stddef.bi"
#include once "crt/sys/types.bi"

#if defined(__FB_LINUX__)
#include once "crt/sys/linux/socket.bi"
#else
#error Platform unsupported
#endif

type osockaddr
	sa_family as ushort
	sa_data(0 to 14-1) as ubyte
end type

enum 
	SHUT_RD = 0
	SHUT_WR
	SHUT_RDWR
end enum

extern "c"
declare function socket_ alias "socket" (byval __domain as integer, byval __type as integer, byval __protocol as integer) as integer
#define opensocket socket_ 
declare function socketpair (byval __domain as integer, byval __type as integer, byval __protocol as integer, byval __fds as integer ptr) as integer
declare function bind (byval __fd as integer, byval __addr as sockaddr ptr, byval __len as socklen_t) as integer
declare function getsockname (byval __fd as integer, byval __addr as sockaddr ptr, byval __len as socklen_t ptr) as integer
declare function connect (byval __fd as integer, byval __addr as sockaddr ptr, byval __len as socklen_t) as integer
declare function getpeername (byval __fd as integer, byval __addr as sockaddr ptr, byval __len as socklen_t ptr) as integer
declare function send (byval __fd as integer, byval __buf as zstring ptr, byval __n as size_t, byval __flags as integer) as ssize_t
declare function recv (byval __fd as integer, byval __buf as zstring ptr, byval __n as size_t, byval __flags as integer) as ssize_t
declare function sendto (byval __fd as integer, byval __buf as zstring ptr, byval __n as size_t, byval __flags as integer, byval __addr as sockaddr ptr, byval __addr_len as socklen_t) as ssize_t
declare function recvfrom (byval __fd as integer, byval __buf as zstring ptr, byval __n as size_t, byval __flags as integer, byval __addr as sockaddr ptr, byval __addr_len as socklen_t ptr) as ssize_t
declare function sendmsg (byval __fd as integer, byval __message as msghdr ptr, byval __flags as integer) as ssize_t
declare function recvmsg (byval __fd as integer, byval __message as msghdr ptr, byval __flags as integer) as ssize_t
declare function getsockopt (byval __fd as integer, byval __level as integer, byval __optname as integer, byval __optval as any ptr, byval __optlen as socklen_t ptr) as integer
declare function setsockopt (byval __fd as integer, byval __level as integer, byval __optname as integer, byval __optval as any ptr, byval __optlen as socklen_t) as integer
declare function listen (byval __fd as integer, byval __n as integer) as integer
declare function accept (byval __fd as integer, byval __addr as sockaddr ptr, byval __addr_len as socklen_t ptr) as integer
declare function shutdown (byval __fd as integer, byval __how as integer) as integer
declare function isfdtype (byval __fd as integer, byval __fdtype as integer) as integer
#define closesocket close_
end extern

'' winsock-ish typedefs
type socket as integer
type PSOCKADDR as sockaddr ptr
type LPSOCKADDR as sockaddr ptr
type PSOCKADDR_IN as sockaddr_in ptr
type LPSOCKADDR_IN as sockaddr_in ptr
type PLINGER as linger ptr
type LPLINGER as linger ptr
type PIN_ADDR as in_addr ptr
type LPIN_ADDR as in_addr ptr
type PFD_SET as fd_set ptr
type LPFD_SET as fd_set ptr
type PHOSTENT as hostent ptr
type LPHOSTENT as hostent ptr
type PSERVENT as servent ptr
type LPSERVENT as servent ptr
type PPROTOENT as protoent ptr
type LPPROTOENT as protoent ptr
type PTIMEVAL as timeval ptr
type LPTIMEVAL as timeval ptr

#define SOCKET_ERROR -1

#endif
