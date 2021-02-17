table 50230 "Oel line"
{
    fields
    {
        field(1; "Document no"; code[20])
        {
            TableRelation = "Oel Header"."No.";
        }
        field(2; "Line No."; Integer)
        {
        }
        field(3; "Oel No."; code[20])
        {
        }
        field(4; "Oel Title"; text[100])
        {
        }
        field(5; "Price (LCY)"; Decimal)
        {
        }
        field(6; "Line Sum"; Decimal)
        {
        }
        field(7; "Line Discount"; Decimal)
        {
        }
        field(8; "Line Unit"; Integer)
        {
        }
        field(9; "Oel Customer"; code[20])
        {
        }
        field(10; "Line Amount"; Integer)
        {
        }
        /*field(11; "Type"; Option)
        {
        }*/
        field(12; "matrix"; Integer)
        {
        }
        field(13; "No"; code[20])
        {
        }
    }

    keys
    {
        key(PK; "Document no", "Line No.")
        {
            Clustered = true;
        }
    }
}