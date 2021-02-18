page 50229 "Oel Customer Card"
{
    UsageCategory = Administration;
    ApplicationArea = all;
    Caption = 'Oel Customer Card';
    PageType = Card;
    SourceTable = OelCustomer;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                }
                field("Phone No"; Rec."Phone No")
                {
                    ApplicationArea = All;
                }
                field("Post code"; Rec."Post code")
                {
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }
                field(adress; Rec.adress)
                {
                    ApplicationArea = All;
                }

                field("Adress 2"; Rec."Adress 2")
                {
                    ApplicationArea = All;
                }
                field("Country/Region code"; Rec."Country/Region code")
                {
                    ApplicationArea = All;
                }
                field("Created by"; Rec."Created by")
                {
                    ApplicationArea = All;
                }
                field("Creation date"; Rec."Creation date")
                {
                    ApplicationArea = All;
                }
                field("Language Code"; Rec."Language Code")
                {
                    ApplicationArea = All;
                }
                field("Last Date modifyed"; Rec."Last Date modifyed")
                {
                    ApplicationArea = All;
                }
                field("Modified by"; Rec."Modified by")
                {
                    ApplicationArea = All;
                }
                field("Posted Order Amount"; Rec."Posted Order Amount")
                {
                    ApplicationArea = All;
                }
                field(Birthday; Rec.Birthday)
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                /* field(Picture; Rec.Picture)
                 {
                     ApplicationArea = All;
                 }*/
                field(Website; Rec.Website)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
