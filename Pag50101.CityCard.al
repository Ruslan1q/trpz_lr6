page 50101 "City Card"
{

    Caption = 'City Card';
    PageType = Card;
    SourceTable = City;
    Editable = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
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
                field("Regional Manager"; "Regional Manager")
                {
                    ApplicationArea = All;
                }
                field("Regional Manager Name"; "Regional Manager Name")
                {
                    ApplicationArea = All;
                }
                field("People Count"; "People Count")
                {
                    ApplicationArea = All;
                }
                field(Square; Square)
                {
                    ApplicationArea = All;
                }
                field("No. of Buldings"; "No. of Buldings")
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

}
