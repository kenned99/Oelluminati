table 50231 "Oel Header"
{
    fields
    {
        field(1; "No."; Code[20]) { }
        field(2; "Type"; Code[20]) { }
        field(3; "Sell-To-Customer No."; Code[20]) { }
        field(4; "Full Name"; Text[50]) { }
        field(5; "Address"; Text[50]) { }
        field(6; "Address 2"; Text[50]) { }
        field(7; Email; Text[80]) { }
        field(8; "Phone No."; Text[30]) { }
        field(9; "Language Code"; Code[10]) { }
        field(10; Website; Text[100]) { }
        field(11; "Country/Region Code"; Code[10]) { }
        field(12; City; Text[30]) { }
        field(13; "Post Code"; Code[20]) { }
        field(14; Birthday; Date) { }
        field(15; "Balance (LCY)"; Decimal) { }
        /*field(16; "Discount Percent"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Discount"."Discount Percent"
            WHERE("No." = FIELD("No.")));
        }*/
        field(17; Rented; Integer) { }
        field(18; Exceeded; Integer) { }
        field(19; "Creation Date"; Date) { }
        field(20; "Shipment Date"; Date) { }
        field(21; "Created By"; Code[50]) { }
        field(22; "Modified By"; Code[50]) { }
        field(23; "Comment"; Text[100]) { }
        field(24; "VAT %"; Decimal) { }
        field(25; "Total Excl. VAT"; Decimal) { }
        field(26; "Total Incl. VAT"; Decimal) { }

    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}