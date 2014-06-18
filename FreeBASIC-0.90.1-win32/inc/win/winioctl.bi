''
''
'' winioctl -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __win_winioctl_bi__
#define __win_winioctl_bi__

#define HIST_NO_OF_BUCKETS 24
#define HISTOGRAM_BUCKET_SIZE sizeof(HISTOGRAM_BUCKET)
#define DISK_HISTOGRAM_SIZE sizeof(DISK_HISTOGRAM)
#define CTL_CODE(t,f,m,a) (((t) shl 16)or((a) shl 14)or((f) shl 2)or(m))
#define DEVICE_TYPE_FROM_CTL_CODE(c) ((cuint((c) and &hffff0000)) shr 16)
#define IOCTL_STORAGE_BASE FILE_DEVICE_MASS_STORAGE
#define IOCTL_STORAGE_CHECK_VERIFY     CTL_CODE(IOCTL_STORAGE_BASE, &h0200, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_CHECK_VERIFY2    CTL_CODE(IOCTL_STORAGE_BASE, &h0200, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_MEDIA_REMOVAL    CTL_CODE(IOCTL_STORAGE_BASE, &h0201, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_EJECT_MEDIA      CTL_CODE(IOCTL_STORAGE_BASE, &h0202, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_LOAD_MEDIA       CTL_CODE(IOCTL_STORAGE_BASE, &h0203, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_LOAD_MEDIA2      CTL_CODE(IOCTL_STORAGE_BASE, &h0203, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_RESERVE          CTL_CODE(IOCTL_STORAGE_BASE, &h0204, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_RELEASE          CTL_CODE(IOCTL_STORAGE_BASE, &h0205, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_FIND_NEW_DEVICES CTL_CODE(IOCTL_STORAGE_BASE, &h0206, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_EJECTION_CONTROL CTL_CODE(IOCTL_STORAGE_BASE, &h0250, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_MCN_CONTROL      CTL_CODE(IOCTL_STORAGE_BASE, &h0251, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_GET_MEDIA_TYPES  CTL_CODE(IOCTL_STORAGE_BASE, &h0300, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_GET_MEDIA_TYPES_EX CTL_CODE(IOCTL_STORAGE_BASE, &h0301, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_RESET_BUS        CTL_CODE(IOCTL_STORAGE_BASE, &h0400, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_RESET_DEVICE     CTL_CODE(IOCTL_STORAGE_BASE, &h0401, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_GET_DEVICE_NUMBER CTL_CODE(IOCTL_STORAGE_BASE, &h0420, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_PREDICT_FAILURE CTL_CODE(IOCTL_STORAGE_BASE, &h0440, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_BASE FILE_DEVICE_DISK
#define IOCTL_DISK_GET_DRIVE_GEOMETRY CTL_CODE(IOCTL_DISK_BASE,0,METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_GET_PARTITION_INFO CTL_CODE(IOCTL_DISK_BASE,1,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_SET_PARTITION_INFO CTL_CODE(IOCTL_DISK_BASE,2,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_GET_DRIVE_LAYOUT	CTL_CODE(IOCTL_DISK_BASE,3,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_SET_DRIVE_LAYOUT CTL_CODE(IOCTL_DISK_BASE,4,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_VERIFY CTL_CODE(IOCTL_DISK_BASE,5,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_FORMAT_TRACKS CTL_CODE(IOCTL_DISK_BASE,6,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_REASSIGN_BLOCKS CTL_CODE(IOCTL_DISK_BASE,7,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_PERFORMANCE CTL_CODE(IOCTL_DISK_BASE,8,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_IS_WRITABLE CTL_CODE(IOCTL_DISK_BASE,9,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_LOGGING CTL_CODE(IOCTL_DISK_BASE,10,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_FORMAT_TRACKS_EX CTL_CODE(IOCTL_DISK_BASE,11,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_HISTOGRAM_STRUCTURE CTL_CODE(IOCTL_DISK_BASE,12,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_HISTOGRAM_DATA CTL_CODE(IOCTL_DISK_BASE,13,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_HISTOGRAM_RESET CTL_CODE(IOCTL_DISK_BASE,14,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_REQUEST_STRUCTURE CTL_CODE(IOCTL_DISK_BASE,15,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_REQUEST_DATA CTL_CODE(IOCTL_DISK_BASE,16,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_GET_PARTITION_INFO_EX CTL_CODE(IOCTL_DISK_BASE,&h12,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_SET_PARTITION_INFO_EX CTL_CODE(IOCTL_DISK_BASE,&h13,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_GET_DRIVE_LAYOUT_EX CTL_CODE(IOCTL_DISK_BASE,&h14,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_SET_DRIVE_LAYOUT_EX CTL_CODE(IOCTL_DISK_BASE,&h15,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_CREATE_DISK CTL_CODE(IOCTL_DISK_BASE,&h16,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_GET_LENGTH_INFO CTL_CODE(IOCTL_DISK_BASE,&h17,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_PERFORMANCE_OFF CTL_CODE(IOCTL_DISK_BASE,&h18,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_GET_DRIVE_GEOMETRY_EX CTL_CODE(IOCTL_DISK_BASE,&h28,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_GROW_PARTITION CTL_CODE(IOCTL_DISK_BASE,&h34,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_GET_CACHE_INFORMATION CTL_CODE(IOCTL_DISK_BASE,&h35,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_SET_CACHE_INFORMATION CTL_CODE(IOCTL_DISK_BASE,&h36,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_DELETE_DRIVE_LAYOUT CTL_CODE(IOCTL_DISK_BASE,&h40,METHOD_BUFFERED,FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_DISK_UPDATE_PROPERTIES CTL_CODE(IOCTL_DISK_BASE,&h50,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_CHECK_VERIFY CTL_CODE(IOCTL_DISK_BASE,&h200,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_MEDIA_REMOVAL CTL_CODE(IOCTL_DISK_BASE,&h201,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_EJECT_MEDIA CTL_CODE(IOCTL_DISK_BASE,&h202,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_LOAD_MEDIA CTL_CODE(IOCTL_DISK_BASE,&h203,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_RESERVE CTL_CODE(IOCTL_DISK_BASE,&h204,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_RELEASE CTL_CODE(IOCTL_DISK_BASE,&h205,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_FIND_NEW_DEVICES CTL_CODE(IOCTL_DISK_BASE,&h206,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_REMOVE_DEVICE CTL_CODE(IOCTL_DISK_BASE,&h207,METHOD_BUFFERED,FILE_READ_ACCESS)
#define IOCTL_DISK_GET_MEDIA_TYPES CTL_CODE(IOCTL_DISK_BASE,&h300,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_DISK_UPDATE_DRIVE_SIZE CTL_CODE(IOCTL_DISK_BASE, &h0032, METHOD_BUFFERED, FILE_READ_ACCESS or FILE_WRITE_ACCESS)
#define IOCTL_SERIAL_LSRMST_INSERT	CTL_CODE(FILE_DEVICE_SERIAL_PORT,31,METHOD_BUFFERED,FILE_ANY_ACCESS)

#define IOCTL_VOLUME_BASE asc("V")
#define IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS CTL_CODE(IOCTL_VOLUME_BASE, 0, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_VOLUME_IS_CLUSTERED CTL_CODE(IOCTL_VOLUME_BASE, 12, METHOD_BUFFERED, FILE_ANY_ACCESS)

#define FSCTL_LOCK_VOLUME	CTL_CODE(FILE_DEVICE_FILE_SYSTEM,6,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define FSCTL_UNLOCK_VOLUME	CTL_CODE(FILE_DEVICE_FILE_SYSTEM,7,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define FSCTL_DISMOUNT_VOLUME	CTL_CODE(FILE_DEVICE_FILE_SYSTEM,8,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define FSCTL_MOUNT_DBLS_VOLUME	CTL_CODE(FILE_DEVICE_FILE_SYSTEM,13,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define FSCTL_GET_COMPRESSION	CTL_CODE(FILE_DEVICE_FILE_SYSTEM,15,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define FSCTL_SET_COMPRESSION	CTL_CODE(FILE_DEVICE_FILE_SYSTEM,16,METHOD_BUFFERED,FILE_READ_DATA or FILE_WRITE_DATA)
#define FSCTL_READ_COMPRESSION	CTL_CODE(FILE_DEVICE_FILE_SYSTEM,17,METHOD_NEITHER,FILE_READ_DATA)
#define FSCTL_WRITE_COMPRESSION	CTL_CODE(FILE_DEVICE_FILE_SYSTEM,18,METHOD_NEITHER,FILE_WRITE_DATA)
#define FSCTL_GET_NTFS_VOLUME_DATA CTL_CODE(FILE_DEVICE_FILE_SYSTEM,25,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define FSCTL_GET_VOLUME_BITMAP CTL_CODE(FILE_DEVICE_FILE_SYSTEM,27,METHOD_NEITHER,FILE_ANY_ACCESS)
#define FSCTL_GET_RETRIEVAL_POINTERS CTL_CODE(FILE_DEVICE_FILE_SYSTEM,28,METHOD_NEITHER,FILE_ANY_ACCESS)
#define FSCTL_MOVE_FILE CTL_CODE(FILE_DEVICE_FILE_SYSTEM,29,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define FSCTL_GET_REPARSE_POINT CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 42, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_SET_REPARSE_POINT CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 41, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_DELETE_REPARSE_POINT CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 43, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_SET_SPARSE	CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 49, METHOD_BUFFERED, FILE_SPECIAL_ACCESS)
#define DEVICE_TYPE DWORD

#define FILE_DEVICE_BEEP 1
#define FILE_DEVICE_CD_ROM 2
#define FILE_DEVICE_CD_ROM_FILE_SYSTEM 3
#define FILE_DEVICE_CONTROLLER 4
#define FILE_DEVICE_DATALINK 5
#define FILE_DEVICE_DFS 6
#define FILE_DEVICE_DISK 7
#define FILE_DEVICE_DISK_FILE_SYSTEM 8
#define FILE_DEVICE_FILE_SYSTEM 9
#define FILE_DEVICE_INPORT_PORT 10
#define FILE_DEVICE_KEYBOARD 11
#define FILE_DEVICE_MAILSLOT 12
#define FILE_DEVICE_MIDI_IN 13
#define FILE_DEVICE_MIDI_OUT 14
#define FILE_DEVICE_MOUSE 15
#define FILE_DEVICE_MULTI_UNC_PROVIDER 16
#define FILE_DEVICE_NAMED_PIPE 17
#define FILE_DEVICE_NETWORK 18
#define FILE_DEVICE_NETWORK_BROWSER 19
#define FILE_DEVICE_NETWORK_FILE_SYSTEM 20
#define FILE_DEVICE_NULL 21
#define FILE_DEVICE_PARALLEL_PORT 22
#define FILE_DEVICE_PHYSICAL_NETCARD 23
#define FILE_DEVICE_PRINTER 24
#define FILE_DEVICE_SCANNER 25
#define FILE_DEVICE_SERIAL_MOUSE_PORT 26
#define FILE_DEVICE_SERIAL_PORT 27
#define FILE_DEVICE_SCREEN 28
#define FILE_DEVICE_SOUND 29
#define FILE_DEVICE_STREAMS 30
#define FILE_DEVICE_TAPE 31
#define FILE_DEVICE_TAPE_FILE_SYSTEM 32
#define FILE_DEVICE_TRANSPORT 33
#define FILE_DEVICE_UNKNOWN 34
#define FILE_DEVICE_VIDEO 35
#define FILE_DEVICE_VIRTUAL_DISK 36
#define FILE_DEVICE_WAVE_IN 37
#define FILE_DEVICE_WAVE_OUT 38
#define FILE_DEVICE_8042_PORT 39
#define FILE_DEVICE_NETWORK_REDIRECTOR 40
#define FILE_DEVICE_BATTERY 41
#define FILE_DEVICE_BUS_EXTENDER 42
#define FILE_DEVICE_MODEM 43
#define FILE_DEVICE_VDM 44
#define FILE_DEVICE_MASS_STORAGE 45
#define FILE_DEVICE_SMB 46
#define FILE_DEVICE_KS 47
#define FILE_DEVICE_CHANGER 48
#define FILE_DEVICE_SMARTCARD 49
#define FILE_DEVICE_ACPI 50
#define FILE_DEVICE_DVD 51
#define FILE_DEVICE_FULLSCREEN_VIDEO 52
#define FILE_DEVICE_DFS_FILE_SYSTEM 53
#define FILE_DEVICE_DFS_VOLUME 54
#define FILE_DEVICE_SERENUM 55
#define FILE_DEVICE_TERMSRV 56
#define FILE_DEVICE_KSEC 57
#define PARTITION_ENTRY_UNUSED 0
#define PARTITION_FAT_12 1
#define PARTITION_XENIX_1 2
#define PARTITION_XENIX_2 3
#define PARTITION_FAT_16 4
#define PARTITION_EXTENDED 5
#define PARTITION_HUGE 6
#define PARTITION_IFS 7
#define PARTITION_FAT32 &h0B
#define PARTITION_FAT32_XINT13 &h0C
#define PARTITION_XINT13 &h0E
#define PARTITION_XINT13_EXTENDED &h0F
#define PARTITION_PREP &h41
#define PARTITION_LDM &h42
#define PARTITION_UNIX &h63
#define PARTITION_NTFT 128
#define VALID_NTFT &hC0
#define METHOD_BUFFERED 0
#define METHOD_IN_DIRECT 1
#define METHOD_OUT_DIRECT 2
#define METHOD_NEITHER 3
#define SERIAL_LSRMST_ESCAPE 0
#define SERIAL_LSRMST_LSR_DATA 1
#define SERIAL_LSRMST_LSR_NODATA 2
#define SERIAL_LSRMST_MST 3
#define FILE_ANY_ACCESS &h00000000
#define FILE_SPECIAL_ACCESS &h00000000
#define FILE_READ_ACCESS &h00000001
#define FILE_WRITE_ACCESS &h00000002
#define DISK_LOGGING_START 0
#define DISK_LOGGING_STOP 1
#define DISK_LOGGING_DUMP 2
#define DISK_BINNING 3

type BAD_TRACK_NUMBER as WORD
type PBAD_TRACK_NUMBER as WORD ptr

enum BIN_TYPES
	RequestSize
	RequestLocation
end enum

type BIN_RANGE
	StartValue as LARGE_INTEGER
	Length as LARGE_INTEGER
end type

type PBIN_RANGE as BIN_RANGE ptr

type BIN_COUNT
	BinRange as BIN_RANGE
	BinCount as DWORD
end type

type PBIN_COUNT as BIN_COUNT ptr

type BIN_RESULTS
	NumberOfBins as DWORD
	BinCounts(0 to 1-1) as BIN_COUNT
end type

type PBIN_RESULTS as BIN_RESULTS ptr

enum PARTITION_STYLE
	PARTITION_STYLE_MBR
	PARTITION_STYLE_GPT
	PARTITION_STYLE_RAW
end enum

type CREATE_DISK_GPT
	DiskId as GUID
	MaxPartitionCount as DWORD
end type

type PCREATE_DISK_GPT as CREATE_DISK_GPT ptr

type CREATE_DISK_MBR
	Signature as DWORD
end type

type PCREATE_DISK_MBR as CREATE_DISK_MBR ptr

type CREATE_DISK
	PartitionStyle as PARTITION_STYLE
    union
    	Mbr as CREATE_DISK_MBR
    	Gpt as CREATE_DISK_GPT
    end union
end type

type PCREATE_DISK as CREATE_DISK ptr

enum DISK_CACHE_RETENTION_PRIORITY
	EqualPriority
	KeepPrefetchedData
	KeepReadData
end enum

type DISK_CACHE_INFORMATION_ScalarPrefetch
	Minimum as WORD
    Maximum as WORD
    MaximumBlocks as WORD
end type

type DISK_CACHE_INFORMATION_BlockPrefetch	
	Minimum as WORD
    Maximum as WORD
end type

type DISK_CACHE_INFORMATION
	ParametersSavable as BOOLEAN
	ReadCacheEnabled as BOOLEAN
	WriteCacheEnabled as BOOLEAN
	ReadRetentionPriority as DISK_CACHE_RETENTION_PRIORITY
	WriteRetentionPriority as DISK_CACHE_RETENTION_PRIORITY
	DisablePrefetchTransferLength as WORD
	PrefetchScalar as BOOLEAN
  	union
    	ScalarPrefetch as DISK_CACHE_INFORMATION_ScalarPrefetch
    	BlockPrefetch as DISK_CACHE_INFORMATION_BlockPrefetch
	end union
end type

type PDISK_CACHE_INFORMATION as DISK_CACHE_INFORMATION ptr

enum DETECTION_TYPE
	DetectNone
	DetectInt13
	DetectExInt13
end enum

type DISK_INT13_INFO
	DriveSelect as WORD
	MaxCylinders as DWORD
	SectorsPerTrack as WORD
	MaxHeads as WORD
	NumberDrives as WORD
end type

type PDISK_INT13_INFO as DISK_INT13_INFO ptr

type DISK_EX_INT13_INFO
	ExBufferSize as WORD
	ExFlags as WORD
	ExCylinders as DWORD
	ExHeads as DWORD
	ExSectorsPerTrack as DWORD
	ExSectorsPerDrive as DWORD64
	ExSectorSize as WORD
	ExReserved as WORD
end type

type PDISK_EX_INT13_INFO as DISK_EX_INT13_INFO ptr

type DISK_DETECTION_INFO
	SizeOfDetectInfo as DWORD
	DetectionType as DETECTION_TYPE
    Int13 as DISK_INT13_INFO
    ExInt13 as DISK_EX_INT13_INFO 
end type

type PDISK_DETECTION_INFO as DISK_DETECTION_INFO ptr

enum MEDIA_TYPE
	Unknown
	F5_1Pt2_512
	F3_1Pt44_512
	F3_2Pt88_512
	F3_20Pt8_512
	F3_720_512
	F5_360_512
	F5_320_512
	F5_320_1024
	F5_180_512
	F5_160_512
	RemovableMedia
	FixedMedia
	F3_120M_512
	F3_640_512
	F5_640_512
	F5_720_512
	F3_1Pt2_512
	F3_1Pt23_1024
	F5_1Pt23_1024
	F3_128Mb_512
	F3_230Mb_512
	F8_256_128
	F3_200Mb_512
	F3_240M_512
	F3_32M_512
end enum

type PMEDIA_TYPE as MEDIA_TYPE

type DISK_GEOMETRY
	Cylinders as LARGE_INTEGER
	MediaType as MEDIA_TYPE
	TracksPerCylinder as DWORD
	SectorsPerTrack as DWORD
	BytesPerSector as DWORD
end type

type PDISK_GEOMETRY as DISK_GEOMETRY ptr

type DISK_GEOMETRY_EX
	Geometry as DISK_GEOMETRY
	DiskSize as LARGE_INTEGER
	Data(0 to 1-1) as UBYTE
end type

type PDISK_GEOMETRY_EX as DISK_GEOMETRY_EX ptr

type DISK_GROW_PARTITION
	PartitionNumber as DWORD
	BytesToGrow as LARGE_INTEGER
end type

type PDISK_GROW_PARTITION as DISK_GROW_PARTITION ptr

type DISK_PARTITION_INFO_Mbr
	Signature as DWORD 
end type

type DISK_PARTITION_INFO_Gpt
	DiskId as GUID 
end type

type DISK_PARTITION_INFO
	SizeOfPartitionInfo as DWORD
	PartitionStyle as PARTITION_STYLE
  	union
    	Mbr as DISK_PARTITION_INFO_Mbr
    	Gpt as DISK_PARTITION_INFO_Gpt
    end union
end type

type PDISK_PARTITION_INFO as DISK_PARTITION_INFO ptr

type DISK_PERFORMANCE
	BytesRead as LARGE_INTEGER
	BytesWritten as LARGE_INTEGER
	ReadTime as LARGE_INTEGER
	WriteTime as LARGE_INTEGER
	ReadCount as DWORD
	WriteCount as DWORD
	QueueDepth as DWORD
end type

type PDISK_PERFORMANCE as DISK_PERFORMANCE ptr

type DISK_RECORD
	ByteOffset as LARGE_INTEGER
	StartTime as LARGE_INTEGER
	EndTime as LARGE_INTEGER
	VirtualAddress as PVOID
	NumberOfBytes as DWORD
	DeviceNumber as UBYTE
	ReadRequest as BOOLEAN
end type

type PDISK_RECORD as DISK_RECORD ptr

type DISK_LOGGING
	Function as UBYTE
	BufferAddress as PVOID
	BufferSize as DWORD
end type

type PDISK_LOGGING as DISK_LOGGING ptr

type DISKQUOTA_USER_INFORMATION
	QuotaUsed as LONGLONG
	QuotaThreshold as LONGLONG
	QuotaLimit as LONGLONG
end type

type PDISKQUOTA_USER_INFORMATION as DISKQUOTA_USER_INFORMATION ptr

type FORMAT_PARAMETERS
	MediaType as MEDIA_TYPE
	StartCylinderNumber as DWORD
	EndCylinderNumber as DWORD
	StartHeadNumber as DWORD
	EndHeadNumber as DWORD
end type

type PFORMAT_PARAMETERS as FORMAT_PARAMETERS ptr

type FORMAT_EX_PARAMETERS
	MediaType as MEDIA_TYPE
	StartCylinderNumber as DWORD
	EndCylinderNumber as DWORD
	StartHeadNumber as DWORD
	EndHeadNumber as DWORD
	FormatGapLength as WORD
	SectorsPerTrack as WORD
	SectorNumber(0 to 1-1) as WORD
end type

type PFORMAT_EX_PARAMETERS as FORMAT_EX_PARAMETERS ptr

type GET_LENGTH_INFORMATION
	Length as LARGE_INTEGER
end type

type HISTOGRAM_BUCKET
	Reads as DWORD
	Writes as DWORD
end type

type PHISTOGRAM_BUCKET as HISTOGRAM_BUCKET ptr

type DISK_HISTOGRAM
	DiskSize as LARGE_INTEGER
	Start as LARGE_INTEGER
	End as LARGE_INTEGER
	Average as LARGE_INTEGER
	AverageRead as LARGE_INTEGER
	AverageWrite as LARGE_INTEGER
	Granularity as DWORD
	Size as DWORD
	ReadCount as DWORD
	WriteCount as DWORD
	Histogram as PHISTOGRAM_BUCKET
end type

type PDISK_HISTOGRAM as DISK_HISTOGRAM ptr

type DISK_EXTENT
	DiskNumber as DWORD
	StartingOffset as LARGE_INTEGER
	ExtentLength as LARGE_INTEGER
end type

type PDISK_EXTENT as DISK_EXTENT ptr

type VOLUME_DISK_EXTENTS
	NumberOfDiskExtents as DWORD
	Extents(0 to 1-1) as DISK_EXTENT
end type

type PVOLUME_DISK_EXTENTS as VOLUME_DISK_EXTENTS ptr

type PARTITION_INFORMATION
	StartingOffset as LARGE_INTEGER
	PartitionLength as LARGE_INTEGER
	HiddenSectors as DWORD
	PartitionNumber as DWORD
	PartitionType as UBYTE
	BootIndicator as BOOLEAN
	RecognizedPartition as BOOLEAN
	RewritePartition as BOOLEAN
end type

type PPARTITION_INFORMATION as PARTITION_INFORMATION ptr

type DRIVE_LAYOUT_INFORMATION
	PartitionCount as DWORD
	Signature as DWORD
	PartitionEntry(0 to 1-1) as PARTITION_INFORMATION
end type

type PDRIVE_LAYOUT_INFORMATION as DRIVE_LAYOUT_INFORMATION ptr

type DRIVE_LAYOUT_INFORMATION_GPT
	DiskId as GUID
	StartingUsableOffset as LARGE_INTEGER
	UsableLength as LARGE_INTEGER
	MaxPartitionCount as ULONG
end type

type PDRIVE_LAYOUT_INFORMATION_GPT as DRIVE_LAYOUT_INFORMATION_GPT ptr

type DRIVE_LAYOUT_INFORMATION_MBR
	Signature as ULONG
end type

type PDRIVE_LAYOUT_INFORMATION_MBR as DRIVE_LAYOUT_INFORMATION_MBR ptr

type PARTITION_INFORMATION_MBR
	PartitionType as UBYTE
	BootIndicator as BOOLEAN
	RecognizedPartition as BOOLEAN
	HiddenSectors as DWORD
end type

type PARTITION_INFORMATION_GPT
	PartitionType as GUID
	PartitionId as GUID
	Attributes as DWORD64
	Name as wstring * 36
end type

type PARTITION_INFORMATION_EX
	PartitionStyle as PARTITION_STYLE
	StartingOffset as LARGE_INTEGER
	PartitionLength as LARGE_INTEGER
	PartitionNumber as DWORD
	RewritePartition as BOOLEAN
  	union
    	Mbr as PARTITION_INFORMATION_MBR 
    	Gpt as PARTITION_INFORMATION_GPT
  	end union
end type

type DRIVE_LAYOUT_INFORMATION_EX
	PartitionStyle as DWORD
	PartitionCount as DWORD
    union
	    Mbr as DRIVE_LAYOUT_INFORMATION_MBR
	    Gpt as DRIVE_LAYOUT_INFORMATION_GPT
	end union
	PartitionEntry(0 to 1-1) as PARTITION_INFORMATION_EX
end type

type PDRIVE_LAYOUT_INFORMATION_EX as DRIVE_LAYOUT_INFORMATION_EX ptr

type MOVE_FILE_DATA
	FileHandle as HANDLE
	StartingVcn as LARGE_INTEGER
	StartingLcn as LARGE_INTEGER
	ClusterCount as DWORD
end type

type PMOVE_FILE_DATA as MOVE_FILE_DATA ptr

type PERF_BIN
	NumberOfBins as DWORD
	TypeOfBin as DWORD
	BinsRanges(0 to 1-1) as BIN_RANGE
end type

type PPERF_BIN as PERF_BIN ptr

type PREVENT_MEDIA_REMOVAL
	PreventMediaRemoval as BOOLEAN
end type

type PPREVENT_MEDIA_REMOVAL as PREVENT_MEDIA_REMOVAL ptr

type RETRIEVAL_POINTERS_BUFFER_Extents
	NextVcn as LARGE_INTEGER
	Lcn as LARGE_INTEGER
end type

type RETRIEVAL_POINTERS_BUFFER
	ExtentCount as DWORD
	StartingVcn as LARGE_INTEGER
	Extents(0 to 1-1) as RETRIEVAL_POINTERS_BUFFER_Extents
end type

type PRETRIEVAL_POINTERS_BUFFER as RETRIEVAL_POINTERS_BUFFER ptr


type REASSIGN_BLOCKS
	Reserved as WORD
	Count as WORD
	BlockNumber(0 to 1-1) as DWORD
end type

type PREASSIGN_BLOCKS as REASSIGN_BLOCKS ptr

type SET_PARTITION_INFORMATION
	PartitionType as UBYTE
end type

type PSET_PARTITION_INFORMATION as SET_PARTITION_INFORMATION ptr

type STARTING_LCN_INPUT_BUFFER
	StartingLcn as LARGE_INTEGER
end type

type PSTARTING_LCN_INPUT_BUFFER as STARTING_LCN_INPUT_BUFFER ptr

type STARTING_VCN_INPUT_BUFFER
	StartingVcn as LARGE_INTEGER
end type

type PSTARTING_VCN_INPUT_BUFFER as STARTING_VCN_INPUT_BUFFER ptr

type VERIFY_INFORMATION
	StartingOffset as LARGE_INTEGER
	Length as DWORD
end type

type PVERIFY_INFORMATION as VERIFY_INFORMATION ptr

type VOLUME_BITMAP_BUFFER
	StartingLcn as LARGE_INTEGER
	BitmapSize as LARGE_INTEGER
	Buffer(0 to 1-1) as UBYTE
end type

type PVOLUME_BITMAP_BUFFER as VOLUME_BITMAP_BUFFER ptr

type NTFS_VOLUME_DATA_BUFFER
	VolumeSerialNumber as LARGE_INTEGER
	NumberSectors as LARGE_INTEGER
	TotalClusters as LARGE_INTEGER
	FreeClusters as LARGE_INTEGER
	TotalReserved as LARGE_INTEGER
	BytesPerSector as DWORD
	BytesPerCluster as DWORD
	BytesPerFileRecordSegment as DWORD
	ClustersPerFileRecordSegment as DWORD
	MftValidDataLength as LARGE_INTEGER
	MftStartLcn as LARGE_INTEGER
	Mft2StartLcn as LARGE_INTEGER
	MftZoneStart as LARGE_INTEGER
	MftZoneEnd as LARGE_INTEGER
end type

type PNTFS_VOLUME_DATA_BUFFER as NTFS_VOLUME_DATA_BUFFER ptr

#endif
