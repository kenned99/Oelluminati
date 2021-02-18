page 50237 "Oel Card"
{
    ApplicationArea = all;
    UsageCategory = Administration;
    Caption = 'Oel Card';
    PageType = Card;
    SourceTable = Oel;

    layout
    {
        area(content)
        {
            group(General)
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
                field("Available oel"; Rec."Available oel")
                {
                    ApplicationArea = All;
                }
                field("Average Stars"; Rec."Average Stars")
                {
                    ApplicationArea = All;
                }
                field("Expected return"; Rec."Expected return")
                {
                    ApplicationArea = All;
                }
                field("Genre No."; Rec."Genre No.")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "OelToGenre List";
                }
                field("Price (LCY)"; Rec."Price (LCY)")
                {
                    ApplicationArea = All;
                }
                field("QTY on document line"; Rec."QTY on document line")
                {
                    ApplicationArea = All;
                }
                field("Release date"; Rec."Release date")
                {
                    ApplicationArea = All;
                }
                field(Inventory; Rec.Inventory)
                {
                    ApplicationArea = All;
                }
                field(Picture; Rec.Picture)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}