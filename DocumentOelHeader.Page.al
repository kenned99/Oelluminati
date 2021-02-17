page 50231 "Document Oel Header"
{
    Caption = 'Sales Order Header';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Lists;
    RefreshOnActivate = true;
    SourceTable = "Oel Header";
    Editable = true;
    layout
    {
        area(Content)
        {
            group(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Sell-To-Customer No."; Rec."Sell-To-Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field("Address 2"; Rec."Address 2")
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Language Code"; Rec."Language Code")
                {
                    ApplicationArea = All;
                }
                field(Website; Rec.Website)
                {
                    ApplicationArea = All;
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                }
                field(Birthday; Rec.Birthday)
                {
                    ApplicationArea = All;
                }
            }
            part(Lines; "Oel Subform")
            {
                Caption = 'Document Line';
                ApplicationArea = All;
                Visible = true;
                UpdatePropagation = SubPart;
                Editable = true;

                SubPageLink = "Document no" = field("No.");
                // SubPageView = sorting("Document No", "Line No.") order(ascending);
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("My report")
            {
                ApplicationArea = All;
                RunObject = report "Oel order confimation";
                Image = "1099Form";

                trigger OnAction()
                begin

                end;
            }
        }
    }

}