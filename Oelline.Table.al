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
            AutoIncrement = true;
        }
        field(3; "Oel No."; code[20])
        {
            TableRelation = Oel.No;
            trigger OnValidate()
            var
                OelCustomer_loc: Record OelCustomer;
                Oel_loc: Record Oel;
                OelHeader_loc: Record "Oel Header";
            begin
                Oel_loc.Get("Oel No.");
                Oel_loc.SetRange(No, "Oel No.");
                //SetRange("Oel No.", Oel_loc.No);
                "Line Sum" := "Price (LCY)" * "Line Unit";
                "Oel Title" := Oel_loc.Title;
                "Price (LCY)" := Oel_loc."Price (LCY)";
            end;

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
            trigger OnValidate()
            var
            // OelCustomer_loc: Record OelCustomer;
            begin
                "Line Sum" := "Price (LCY)" * "Line Unit";
            end;
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
    /* trigger OnInsert()
     var
         Oel_loc: Record Oel;
     begin
         SetRange("Oel No.", Oel_loc.No);
         "Line Sum" := "Price (LCY)" * "Line Unit";
         "Oel Title" := Oel_loc.Title;
         "Price (LCY)" := Oel_loc."Price (LCY)";
     end;
 */

}