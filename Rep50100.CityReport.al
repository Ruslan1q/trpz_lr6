report 50100 "City Report"
{
    Caption = 'City Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = '.\Report.rdl';
    dataset
    {
        dataitem(City; City)
        {

            column(Code; Code)
            {
            }
            column(Name; Name)
            {
            }
            column(RegionalManagerName; "Regional Manager Name")
            {
            }
            column(PeopleCount; "People Count")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
