table 50102 "City User"
{
    fields
    {
        field(1; "User Security ID"; Guid)
        {
            Caption = 'User Security ID';
            DataClassification = ToBeClassified;
        }
        field(2; "User Name"; Code[50])
        {
            Caption = 'User Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Full Name"; Text[80])
        {
            Caption = 'Full Name';
            DataClassification = ToBeClassified;
        }
        field(4; Profile; Option)
        {
            Caption = 'Profile';
            OptionMembers = "Dircetor","Regional Manager","User","Financial Manager";
            DataClassification = ToBeClassified;
        }
        field(5; Password; Code[20])
        {
            Caption = 'Password';
            DataClassification = ToBeClassified;
        }
    }
}