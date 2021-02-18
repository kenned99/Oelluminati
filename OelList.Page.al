page 50236 "Oel List"
{

    ApplicationArea = All;
    Caption = 'Oel List';
    PageType = List;
    SourceTable = Oel;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                }
                field(Bryghus; Rec.Bryghus)
                {
                    ApplicationArea = All;
                }
                field("Release date"; Rec."Release date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
