Class TPANNUAIRE.Messages.Operation.GetAllResponse Extends TPANNUAIRE.Messages.Basic.BasicResponse
{

Property ListPerson As list Of TPANNUAIRE.WebObject.WPerson;

Storage Default
{
<Data name="GetAllResponseDefaultData">
<Subscript>"GetAllResponse"</Subscript>
<Value name="1">
<Value>ListPerson</Value>
</Value>
</Data>
<DefaultData>GetAllResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
