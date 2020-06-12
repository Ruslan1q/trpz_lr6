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
            }
        }
    }

}
