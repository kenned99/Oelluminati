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
            group(GroupName)
            {
                field("key"; "key")
                {
                    ApplicationArea = All;
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