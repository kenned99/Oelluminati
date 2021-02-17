page 50232 "Oel Subform"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Oel line";
    CaptionML = ENU = 'Lines', DAN = 'Linjer';
    DelayedInsert = true;
    MultipleNewLines = true;
    AutoSplitKey = true;
    LinksAllowed = false;
    Editable = true;


    layout
    {
        area(Content)
        {
            repeater(tæst)
            {
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field("Oel No."; "Oel No.")
                {
                    ApplicationArea = all;
                }
                field("Oel Title"; "Oel Title")
                {
                    ApplicationArea = all;
                }
                field("Price (LCY)"; Rec."Price (LCY)")
                {
                    ApplicationArea = All;
                }
                field("Line Unit"; Rec."Line Unit")
                {
                    ApplicationArea = All;
                }
                field("Line Sum"; Rec."Line Sum")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
