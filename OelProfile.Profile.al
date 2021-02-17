profile "OelProfile"
{
    Description = 'Intern besked til udvikler';
    Caption = 'Oel Rolecenter';
    ProfileDescription = 'Rolecenter for KEJ';
    RoleCenter = OelRolecenter;
    Enabled = true;
    Promoted = true;
    Customizations = MyCustomization;
}

pagecustomization MyCustomization customizes OelRolecenterActivities
{
    layout
    {
        modify("oel Header")
        {
            Visible = true;
        }
    }
}