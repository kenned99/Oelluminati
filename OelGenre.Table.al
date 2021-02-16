table 50228 "Oel Genre"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No"; Integer)
        {
        }
        field(2; "desc"; Text[50])
        {
        }
    }

    keys
    {
        key(No; No)
        {
            Clustered = true;
        }
    }
}