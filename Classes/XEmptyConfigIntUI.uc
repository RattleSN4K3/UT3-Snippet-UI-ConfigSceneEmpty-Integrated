class XEmptyConfigIntUI extends UTUIFrontEnd;

function bool HandleInputKey( const out InputEventParameters EventParms )
{
	local bool bResult;

	if(EventParms.EventType == IE_Released)
	{
		if(EventParms.InputKeyName=='XboxTypeS_B' || EventParms.InputKeyName=='Escape')
		{
			OnBack();
			bResult = true;
		}
	}

	return bResult;
}

function OnBack()
{
	CloseScene(self);
}

Defaultproperties
{
}