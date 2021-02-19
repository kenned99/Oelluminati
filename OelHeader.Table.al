table 50231 "Oel Header"
{
    fields
    {
        field(1; "No."; Code[20])
        {
        }
        field(2; "Type"; Code[20]) { }
        field(3; "Sell-To-Customer No."; Code[20])
        {
            TableRelation = OelCustomer."No.";

            trigger OnValidate()
            var
                OelCustomer_loc: Record OelCustomer;
            begin
                OelCustomer_loc.Get("Sell-To-Customer No.");
                "Full Name" := OelCustomer_loc."Full Name";
                Address := OelCustomer_loc.adress;
                "Address 2" := OelCustomer_loc."Adress 2";
                "Phone No." := OelCustomer_loc."Phone No";
                "Language Code" := OelCustomer_loc."Language Code";
                Website := OelCustomer_loc.Website;
                "Country/Region Code" := OelCustomer_loc."Country/Region Code";
                City := OelCustomer_loc.City;
                "Post Code" := OelCustomer_loc."Post code";
                Birthday := OelCustomer_loc.Birthday;
                Email := OelCustomer_loc.Email;
            end;
        }
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
        field(18; Exceeded; Integer) { }
        field(19; "Creation Date"; Date) { }
        field(20; "Shipment Date"; Date) { }
        field(21; "Created By"; Code[50]) { }
        field(22; "Modified By"; Code[50]) { }
        field(23; "Comment"; Text[100]) { }
        field(24; "VAT %"; Decimal) { }
        //  field(25; "Total Excl. VAT"; Decimal) { }
        // field(26; "Total Incl. VAT"; Decimal) { }
        field(30; Done; Boolean) { }
        field(31; "Sum total"; Decimal)
        {
            trigger OnValidate()
            var
                OelCustomer_loc: Record OelCustomer;
                Oel_loc: Record Oel;
                OelHeader_loc: Record "Oel Header";
                OelLine_loc: Record "Oel line";
            begin
                //   Rec.SetRange("No.", OelLine_loc."Document no");
                //OelLine_loc.SetRange("Document no", Rec."No.");
                OelLine_loc.Get("No.");
                OelLine_loc.SetRange("Document no", Rec."No.");
                IF OelLine_loc.FindSet() then
                    repeat
                        OelHeader_loc.init();
                        OelHeader_loc.Validate("Sum total", OelLine_loc."Line Sum");
                        OelHeader_loc.Modify(true);
                    until OelLine_loc.Next() = 0;
            end;
        }

    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        NoSeriesManagement_loc: Codeunit NoSeriesManagement;
    begin

        IF "No." = '' THEN
            "No." := NoSeriesManagement_loc.GetNextNo('OELHEADER', WorkDate(), true);
    end;

    /* trigger OnModify()
     var
         OelCustomer_loc: Record OelCustomer;
         Oel_loc: Record Oel;
         OelHeader_loc: Record "Oel Header";
         OelLine_loc: Record "Oel line";
     begin
         OelLine_loc.SetRange("Document no", "No.");
         IF OelLine_loc.FindSet() then
             repeat
                 //OelHeader_loc.init;
                 OelHeader_loc."Sum total" += OelLine_loc."Line Sum";
             //OelHeader_loc.Insert(true);
             until OelLine_loc.Next() = 0;
     end;*/
}