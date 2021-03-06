''
''
'' libvlc_events -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __libvlc_events_bi__
#define __libvlc_events_bi__

#define LIBVLC_EVENTS_H 1

enum libvlc_event_e
	libvlc_MediaMetaChanged = 0
	libvlc_MediaSubItemAdded
	libvlc_MediaDurationChanged
	libvlc_MediaParsedChanged
	libvlc_MediaFreed
	libvlc_MediaStateChanged
	libvlc_MediaPlayerMediaChanged = &h100
	libvlc_MediaPlayerNothingSpecial
	libvlc_MediaPlayerOpening
	libvlc_MediaPlayerBuffering
	libvlc_MediaPlayerPlaying
	libvlc_MediaPlayerPaused
	libvlc_MediaPlayerStopped
	libvlc_MediaPlayerForward
	libvlc_MediaPlayerBackward
	libvlc_MediaPlayerEndReached
	libvlc_MediaPlayerEncounteredError
	libvlc_MediaPlayerTimeChanged
	libvlc_MediaPlayerPositionChanged
	libvlc_MediaPlayerSeekableChanged
	libvlc_MediaPlayerPausableChanged
	libvlc_MediaPlayerTitleChanged
	libvlc_MediaPlayerSnapshotTaken
	libvlc_MediaPlayerLengthChanged
	libvlc_MediaListItemAdded = &h200
	libvlc_MediaListWillAddItem
	libvlc_MediaListItemDeleted
	libvlc_MediaListWillDeleteItem
	libvlc_MediaListViewItemAdded = &h300
	libvlc_MediaListViewWillAddItem
	libvlc_MediaListViewItemDeleted
	libvlc_MediaListViewWillDeleteItem
	libvlc_MediaListPlayerPlayed = &h400
	libvlc_MediaListPlayerNextItemSet
	libvlc_MediaListPlayerStopped
	libvlc_MediaDiscovererStarted = &h500
	libvlc_MediaDiscovererEnded
	libvlc_VlmMediaAdded = &h600
	libvlc_VlmMediaRemoved
	libvlc_VlmMediaChanged
	libvlc_VlmMediaInstanceStarted
	libvlc_VlmMediaInstanceStopped
	libvlc_VlmMediaInstanceStatusInit
	libvlc_VlmMediaInstanceStatusOpening
	libvlc_VlmMediaInstanceStatusPlaying
	libvlc_VlmMediaInstanceStatusPause
	libvlc_VlmMediaInstanceStatusEnd
	libvlc_VlmMediaInstanceStatusError
end enum

type libvlc_event_t
	type_ as libvlc_event_e
	p_obj as any ptr
	union
		type media_player_media_changed
		end type
		type vlm_media_event
		end type
		type media_player_length_changed
		end type
		type media_player_snapshot_taken
		end type
		type media_list_player_next_item_set
		end type
		type media_list_will_delete_item
		end type
		type media_list_item_deleted
		end type
		type media_list_will_add_item
		end type
		type media_list_item_added
	end union
end type

type libvlc_event_t as any

union libvlc_event_t__NESTED__u
	media_player_media_changed as libvlc_event_t__NESTED__u__NESTED__media_player_media_changed
	vlm_media_event as libvlc_event_t__NESTED__u__NESTED__vlm_media_event
	media_player_length_changed as libvlc_event_t__NESTED__u__NESTED__media_player_length_changed
	media_player_snapshot_taken as libvlc_event_t__NESTED__u__NESTED__media_player_snapshot_taken
	media_list_player_next_item_set as libvlc_event_t__NESTED__u__NESTED__media_list_player_next_item_set
	media_list_will_delete_item as libvlc_event_t__NESTED__u__NESTED__media_list_will_delete_item
	media_list_item_deleted as libvlc_event_t__NESTED__u__NESTED__media_list_item_deleted
	media_list_will_add_item as libvlc_event_t__NESTED__u__NESTED__media_list_will_add_item
	media_list_item_added as libvlc_event_t__NESTED__u__NESTED__media_list_item_added
	media_player_pausable_changed as libvlc_event_t__NESTED__u__NESTED__media_player_pausable_changed
	media_player_seekable_changed as libvlc_event_t__NESTED__u__NESTED__media_player_seekable_changed
	media_player_title_changed as libvlc_event_t__NESTED__u__NESTED__media_player_title_changed
	media_player_time_changed as libvlc_event_t__NESTED__u__NESTED__media_player_time_changed
	media_player_position_changed as libvlc_event_t__NESTED__u__NESTED__media_player_position_changed
	media_state_changed as libvlc_event_t__NESTED__u__NESTED__media_state_changed
	media_freed as libvlc_event_t__NESTED__u__NESTED__media_freed
	media_parsed_changed as libvlc_event_t__NESTED__u__NESTED__media_parsed_changed
	media_duration_changed as libvlc_event_t__NESTED__u__NESTED__media_duration_changed
	media_subitem_added as libvlc_event_t__NESTED__u__NESTED__media_subitem_added
	media_meta_changed as libvlc_event_t__NESTED__u__NESTED__media_meta_changed
end union

type libvlc_event_t__NESTED__u__NESTED__media_player_media_changed
	new_media as libvlc_media_t ptr
end type

type libvlc_event_t__NESTED__u__NESTED__vlm_media_event
	psz_media_name as zstring ptr
	psz_instance_name as zstring ptr
end type

type libvlc_event_t__NESTED__u__NESTED__media_player_length_changed
	new_length as libvlc_time_t
end type

type libvlc_event_t__NESTED__u__NESTED__media_player_snapshot_taken
	psz_filename as zstring ptr
end type

type libvlc_event_t__NESTED__u__NESTED__media_list_player_next_item_set
	item as libvlc_media_t ptr
end type

type libvlc_event_t__NESTED__u__NESTED__media_list_will_delete_item
	item as libvlc_media_t ptr
	index as integer
end type

type libvlc_event_t__NESTED__u__NESTED__media_list_item_deleted
	item as libvlc_media_t ptr
	index as integer
end type

type libvlc_event_t__NESTED__u__NESTED__media_list_will_add_item
	item as libvlc_media_t ptr
	index as integer
end type

type libvlc_event_t__NESTED__u__NESTED__media_list_item_added
	item as libvlc_media_t ptr
	index as integer
end type

type libvlc_event_t__NESTED__u__NESTED__media_player_pausable_changed
	new_pausable as integer
end type

type libvlc_event_t__NESTED__u__NESTED__media_player_seekable_changed
	new_seekable as integer
end type

type libvlc_event_t__NESTED__u__NESTED__media_player_title_changed
	new_title as integer
end type

type libvlc_event_t__NESTED__u__NESTED__media_player_time_changed
	new_time as libvlc_time_t
end type

type libvlc_event_t__NESTED__u__NESTED__media_player_position_changed
	new_position as single
end type

type libvlc_event_t__NESTED__u__NESTED__media_state_changed
	new_state as libvlc_state_t
end type

type libvlc_event_t__NESTED__u__NESTED__media_freed
	md as libvlc_media_t ptr
end type

type libvlc_event_t__NESTED__u__NESTED__media_parsed_changed
	new_status as integer
end type

type libvlc_event_t__NESTED__u__NESTED__media_duration_changed
	new_duration as int64_t
end type

type libvlc_event_t__NESTED__u__NESTED__media_subitem_added
	new_child as libvlc_media_t ptr
end type

type libvlc_event_t__NESTED__u__NESTED__media_meta_changed
	meta_type as libvlc_meta_t
end type

#endif
