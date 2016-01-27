Gr. 35 Elevator Project
================


Moduloppdeling
-------
- Cost_function
- Hardware_controller
	- Loop_buttons
	- Door_timer
		
- Kommunikasjon
	- Ping_next
	- Send_state_change
	- Recieve
	- Find_friends
	
Tilstands data
-----------------
Struct:
	- int Previous_floor
	- int Next_floor
	- Array int Buttons


Modulfunksjonalitet
-----------------
- Cost_function
	- Optimaliser ordre fordeling, hvem går hvor. Kjøres hver gang tilsdanden forandres.
- Hardware_controller
	- Ansvar for interaksjoner med hardware
		- Loop_buttons
		- Door_timer
		
- Kommunikasjon
	- Ping_next
	- Send_state_change
	- Recieve
	- Find_friends

