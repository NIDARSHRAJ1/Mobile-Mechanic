Scriptname PortableWorkbench:PAWorkbenchInventory extends ObjectReference
{Turns the misc item into a real world item}

Furniture Property PAWorkbench Auto

; Events ===================================

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	;Only run if it's dropped, not placed into a new container
	If (!akNewContainer)		
		Game.GetPlayer().PlaceAtMe(PAWorkbench as Form, 1, True, False, False)
		Self.Delete()
	EndIf
EndEvent
