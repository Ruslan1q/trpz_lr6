table 50100 City
{
    Caption = 'City';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; "People Count"; Integer)
        {
            Caption = 'People Count';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                OnAfterValidatePeopleCount(Rec);
            end;
        }
        field(4; "Post Code"; Text[100])
        {
            Caption = 'Post Code';
            DataClassification = ToBeClassified;
        }
        field(5; Square; Decimal)
        {
            Caption = 'Square';
            DataClassification = ToBeClassified;
        }
        field(6; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(7; "Regional Manager"; Code[20])
        {
            Caption = 'Regional Manager';
            DataClassification = ToBeClassified;
        }
        field(8; "Regional Manager Name"; Text[100])
        {
            Caption = 'Regional Manager Name';
            DataClassification = ToBeClassified;
        }
        field(9; "No. of Buldings"; Integer)
        {
            Caption = 'No. of Buldings';
            DataClassification = ToBeClassified;

        }
        field(10; "City Type"; Option)
        {
            OptionMembers = "Village","Town","City","Megapolis";
            Caption = 'City Type';
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    [IntegrationEvent(false, false)]
    procedure OnAfterValidatePeopleCount(var CityRec: Record City)
    begin
    end;

}
