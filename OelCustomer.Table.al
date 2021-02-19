table 50232 "OelCustomer"
{
    fields
    {
        field(1; "No."; code[20])
        {
        }
        field(2; "Full Name"; Text[50])
        {
        }
        field(3; "adress"; Text[50])
        {
        }
        field(4; "Adress 2"; text[50])
        {
        }
        field(5; "Email"; text[80])
        {
        }
        field(6; "Phone No"; Text[30])
        {
        }
        field(7; "Language Code"; code[10])
        {
        }
        field(8; "Website"; Text[100])
        {
        }
        field(9; "Country/Region code"; code[10])
        {
        }
        field(10; "City"; Text[30])
        {
        }
        field(11; "Post code"; code[20])
        {
        }
        field(12; "Birthday"; Date)
        {
        }
        field(13; "Picture"; Blob)
        {
            Subtype = Bitmap;
        }
        /*field(14; "Balance (LCY)"; code[20])
        {
        }
        field(15; "Discount Percent"; code[20])
        {
        }*/
        field(16; "Creation date"; Date)
        {
        }
        field(17; "Last Date modifyed"; Date)
        {
        }
        field(18; "Modified by"; code[50])
        {
        }
        field(19; "Created by"; Text[50])
        {
        }
        field(20; "Posted Order Amount"; code[20])
        {
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
    begin
        "Creation date" := Today;
        "Created by" := UserId;
    end;

    trigger OnModify()
    begin
        "Modified by" := UserId;
        "Last Date modifyed" := Today;
    end;
}