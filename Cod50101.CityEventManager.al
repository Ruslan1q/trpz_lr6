codeunit 50101 "City Event Manager"
{
    [EventSubscriber(ObjectType::Table, 50100, 'OnAfterValidatePeopleCount', '', true, true)]
    local procedure OnAfterValidatePaopleCount(CityRec: Record City)
    var
        CityMng: Codeunit "City Managment";
    begin
        if CityRec.IsEmpty() then
            exit;
        CityMng.SetCityType(CityRec);
        CityRec.Modify(true);
    end;

}
