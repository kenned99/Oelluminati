table 50227 "OelToGenre"
{
    CaptionML = ENU = 'Beer Genre', DAN = 'Øl Genre';

    fields
    {
        field(1; "Oel No."; code[20])
        {
            TableRelation = Oel.No;
        }
        field(2; "Genre No."; code[20])
        {
            TableRelation = "Oel Genre".No;
        }
        field(3; "Genre Desc."; Text[30])
        {
        }
        field(4; "Oel Title"; Text[100])
        {
        }
    }

    keys
    {
        key(pk; "Oel No.", "Genre No.")
        {
            Clustered = true;
        }
    }
}