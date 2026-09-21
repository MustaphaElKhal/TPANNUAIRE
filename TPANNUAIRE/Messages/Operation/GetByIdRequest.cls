Class TPANNUAIRE.Messages.Operation.GetByIdRequest Extends TPANNUAIRE.Messages.Basic.BasicRequest
{

Property Id As %String;

Storage Default
{
<Data name="GetByIdRequestDefaultData">
<Subscript>"GetByIdRequest"</Subscript>
<Value name="1">
<Value>Id</Value>
</Value>
</Data>
<DefaultData>GetByIdRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
