page 50235 "OelToGenre List"
{
    ApplicationArea = All;
    Caption = 'OelToGenre';
    PageType = List;
    SourceTable = OelToGenre;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Genre No."; Rec."Genre No.")
                {
                    ApplicationArea = All;
                }
                field("Genre Desc."; Rec."Genre Desc.")
                {
                    ApplicationArea = All;
                }
                field("Oel No."; Rec."Oel No.")
                {
                    ApplicationArea = All;
                }
                field("Oel Title"; Rec."Oel Title")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
