codeunit 50100 "City Managment"
{
    var
        CityRec: record City;
        NewCityRec: record City;
        CityPage: page "City Card";
        user : Record User;

    procedure CreateCityCopy(CityNo: Integer)
    begin
        CityRec.Reset();
        if not CityRec.Get(CityNo) then
            exit;
        CityRec.TestField("No.");
        CopyCityData(CityNo);
        if not NewCityRec.IsEmpty() then begin
            Clear(CityPage);
            CityPage.LookupMode := true;
            CityPage.SetRecord(NewCityRec);
            CityPage.Run();
            Message('City is created. Please edit data');
        end;

    end;

    procedure CopyCityData(CityNo: Integer)
    begin
        NewCityRec.Init();
        NewCityRec.Name := CityRec.Name;
        NewCityRec.Code := CityRec.Code;
        NewCityRec."No. of Buldings" := CityRec."No. of Buldings";
        NewCityRec."People Count" := CityRec."People Count";
        NewCityRec."Post Code" := CityRec."Post Code";
        NewCityRec."Regional Manager" := CityRec."Regional Manager";
        NewCityRec.Square := CityRec.Square;
        NewCityRec.Insert();
    end;

    procedure SetCityType(var CityRec: Record City)
    begin
        if CityRec.IsEmpty then
            exit;
        if CityRec."People Count" > 1000000 then
            CityRec."City Type" := CityRec."City Type"::Megapolis
        else
            if CityRec."People Count" > 100000 then
                CityRec."City Type" := CityRec."City Type"::City
            else
                if CityRec."People Count" > 10000 then
                    CityRec."City Type" := CityRec."City Type"::Town
                else
                    CityRec."City Type" := CityRec."City Type"::Village;
    end;
}
