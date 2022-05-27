# Channels Tree
The core binary of this tree is called `mtg`, which is the game
channel.

Notes (to discover):
 - Does it require other cores to be alive to run?


## Required Data (loaded in this order):
 - CONFIG - _Unique_
 - server_string.txt - _Shared_
 - items/ - _Shared_
 - shop/ - _Shared_
 - chr.asi - _Shared_
 - enemy.asi - _Shared_
 - effect.asi - _Shared_
 - npc/ - _Shared_
 - obj.sc - _Shared_


## Condition Aborts

### Files
If any of the following files is not available or related files loaded,
the MTG core will abort:

 - items/index
 - shop/index
 - npc/index
 - npc/npc.ssc


### NPC Data
If no NPC files are indexed, the MTG core will log `-1 NPC PROTOTYPE` 
and crash.

