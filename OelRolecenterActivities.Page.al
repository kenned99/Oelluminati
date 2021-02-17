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
                    field("oel Header"; "oel Header")
                    {
                        ApplicationArea = All;
                        DrillDownPageId = "Oel Header List";
                    }
                    field("Oel Line"; "Oel Line")
                    {
                        ApplicationArea = all;
                        DrillDownPageId = "oel line list";
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