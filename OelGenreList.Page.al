page 50228 "OelGenreList"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Oel Genre";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                repeater(General)
                {
                    field(No; No)
                    {
                        ApplicationArea = All;
                    }
                    field(desc; desc)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
    }
}