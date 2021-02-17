table 50226 "OelRoleCenter"
{
    CaptionML = ENU = 'Beer Rolecenter', DAN = 'Øl Rollecenter';
    DataPerCompany = true;
    fields
    {
        field(1; "key"; code[10])
        {
        }
        field(2; "oel Header"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Oel Header");
        }
    }
    keys
    {
        key(PK; "key")
        {
            Clustered = true;
        }
    }
}