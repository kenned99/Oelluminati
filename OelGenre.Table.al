table 50228 "Oel Genre"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No"; Code[20])
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