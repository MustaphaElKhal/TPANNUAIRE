Class TPANNUAIRE.Operation.CrudPerson Extends Ens.BusinessOperation
{

Method GetAll(pRequest As TPANNUAIRE.Messages.Operation.GetAllRequest, Output pResponse As TPANNUAIRE.Messages.Operation.GetAllResponse) As %Status
{
    set sql="SELECT * FROM src_Data.Person"
    set Statement = ##class(%SQL.Statement).%New()
    set status= Statement.%Prepare(sql)
    set Result = Statement.%Execute()

    while Result.%Next() {
        set personData = ##class(TPANNUAIRE.Data.Person).%OpenId(Result.Id)
    }
}

Method GetById(pRequest As TPANNUAIRE.Messages.Operation.GetByIdRequest, Output pResponse As TPANNUAIRE.Messages.Operation.GetByIdResponse) As %Status
{
    set personData = ##class(TPANNUAIRE.Data.Person).%OpenId(1)
}

Method CreatePerson(pRequest As TPANNUAIRE.Messages.Operation.CreatePersonRequest, Output pResponse As TPANNUAIRE.Messages.Operation.CreatePersonResponse) As %Status
{
    set personToSave = ##class(TPANNUAIRE.Data.Person).%New()
    set personToSave.FirstName = "Lisa"
    set personToSave.LastName = "Simpson"
    set personToSave.PhoneNumber = "66644488"
    set personToSave.Address = "8, rue anatole france"
    set personToSave.Email = "lisa.simpson@cgi.com"
    set status = personToSave.%Save()
}

Method UpdateById(pRequest As TPANNUAIRE.Messages.Operation.UpdateByIdRequest, Output pResponse As TPANNUAIRE.Messages.Operation.UpdateByIdResponse) As %Status
{
    set personToUpdtade = ##class(TPANNUAIRE.Data.Person).%OpenId(1)
    set personToUpdtade.PhoneNumber = "00000001"
    set status = personToUpdtade.%Save()
}

Method DeleteById(pRequest As TPANNUAIRE.Messages.Operation.DeleteByIdRequest, Output pResponse As TPANNUAIRE.Messages.Operation.DeleteByIdResponse) As %Status
{
    set personData = ##class(TPANNUAIRE.Data.Person).%DeleteId(1)
}

Method SearchByCriteria(pRequest As TPANNUAIRE.Messages.Operation.SearchByCriteriaRequest, Output pResponse As TPANNUAIRE.Messages.Operation.SearchByCriteriaResponse) As %Status
{
    ///TODO
}

}
