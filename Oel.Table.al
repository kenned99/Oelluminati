table 50229 "Oel"
{
    fields
    {
        field(1; No; Code[20])
        {
        }
        field(2; Title; Text[100])
        {
        }
        field(3; Bryghus; Text[100])
        {
        }
        field(4; "Release date"; date)
        {
        }
        field(5; "Genre No."; Code[20])
        {
        }
        field(6; Inventory; Integer)
        {
        }
        field(7; "QTY on document line"; Integer)
        {
        }
        field(8; "Available oel"; Integer)
        {
        }
        field(9; "Expected return"; Date)
        {
        }
        field(10; "Picture"; Blob)
        {
        }
        field(11; "Price (LCY)"; Decimal)
        {
        }
        field(12; "Average Stars"; Decimal)
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