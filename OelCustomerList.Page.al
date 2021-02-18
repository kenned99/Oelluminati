page 50234 "OelCustomerList"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = OelCustomer;
    CardPageId = "Oel Customer Card";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                repeater(haj)
                {
                    field("No."; "No.")
                    {
                        ApplicationArea = All;
                    }
                    field("Full Name"; "Full Name")
                    {
                        ApplicationArea = All;
                    }
                    field(adress; adress)
                    {
                        ApplicationArea = All;
                    }
                    field("Phone No"; "Phone No")
                    {
                        ApplicationArea = All;
                    }
                    field(City; City)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
    }
}