page 50227 "OelRolecenterActivities"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = OelRoleCenter;

    layout
    {
        area(Content)
        {
            group(Groups)
            {
                cuegroup(general)
                {
                    field("key"; "key")
                    {
                        ApplicationArea = All;
                    }
                    field("oel Header"; "oel Header")
                    {
                        ApplicationArea = All;
                        DrillDownPageId = "Oel Header List";
                    }
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.RESET();
        if not Rec.get() then begin
            Rec.INIT();
            Rec.INSERT();
        end;
    end;
}