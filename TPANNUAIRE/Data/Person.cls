Class TPANNUAIRE.Data.Person Extends %Persistent
{

Property FirstName As %String(MAXLEN = 1000);

Property LastName As %String(MAXLEN = 1000) [ Required ];

Property PhoneNumber As %String(MAXLEN = 8);

Property Address As %String(MAXLEN = 1000);

Property Email As %String(MAXLEN = 1000);

Storage Default
{
<Data name="PersonDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
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
<DataLocation>^TPANNUAIRE.Data.PersonD</DataLocation>
<DefaultData>PersonDefaultData</DefaultData>
<IdLocation>^TPANNUAIRE.Data.PersonD</IdLocation>
<IndexLocation>^TPANNUAIRE.Data.PersonI</IndexLocation>
<StreamLocation>^TPANNUAIRE.Data.PersonS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
