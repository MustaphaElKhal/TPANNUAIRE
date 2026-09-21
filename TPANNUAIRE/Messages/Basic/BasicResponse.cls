Class TPANNUAIRE.Messages.Basic.BasicResponse Extends Ens.Response
{

Property codeRetour As %String [ InitialExpression = "UNKNOWN" ];

Property libErreur As %String(MAXLEN = 2000, TRUNCATE = 1);

Storage Default
{
<Data name="BasicResponseDefaultData">
<Subscript>"BasicResponse"</Subscript>
<Value name="1">
<Value>codeRetour</Value>
</Value>
<Value name="2">
<Value>libErreur</Value>
</Value>
</Data>
<DefaultData>BasicResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
