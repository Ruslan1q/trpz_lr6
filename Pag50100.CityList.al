page 50100 "City List"
{

    ApplicationArea = All;
    Caption = 'City List';
    PageType = List;
    SourceTable = City;
    UsageCategory = Lists;
    CardPageId = "City Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field("Post Code"; "Post Code")
                {
                    ApplicationArea = All;
                }
                field("City Type"; "City Type")
                {
                    ApplicationArea = all;
                }
            }
        }

    }
    actions
    {
        area(Processing)
        {
            action("Create Copy")
            {
                Caption = 'Create Copy of the City';
                ToolTip = 'Create Copy of the City';
                Image = Copy;
                trigger OnAction()
                var
                    CityMgt: Codeunit "City Managment";
                begin
                    CityMgt.CreateCityCopy("No.");
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        CityMgt: Codeunit "City Managment";
    begin
        CityMgt.SetCityType(Rec);
        CurrPage.Update(false);
    end;
}
