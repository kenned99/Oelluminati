page 50233 "Oel Line list"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Oel line";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                repeater(tæst)
                {

                    field(No; "No")
                    {
                        ApplicationArea = All;
                    }
                    field("Line No."; "Line No.")
                    {
                        ApplicationArea = all;
                    }
                }
            }
        }
    }
}