Class TPANNUAIRE.WebObject.WPerson Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor)
{

Property Id As %Integer;

Property FirstName As %String(MAXLEN = 1000);

Property LastName As %String(MAXLEN = 1000);

Property PhoneNumber As %String(MAXLEN = 1000);

Property Address As %String(MAXLEN = 1000);

Property Email As %String(MAXLEN = 1000);

Storage Default
{
<Data name="WPersonState">
<Value name="1">
<Value>Id</Value>
</Value>
<Value name="2">
<Value>FirstName</Value>
</Value>
<Value name="3">
<Value>LastName</Value>
</Value>
<Value name="4">
<Value>PhoneNumber</Value>
</Value>
<Value name="5">
<Value>Address</Value>
</Value>
<Value name="6">
<Value>Email</Value>
</Value>
</Data>
<State>WPersonState</State>
<StreamLocation>^TPANNUAIRE.WebObject.WPersonS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
