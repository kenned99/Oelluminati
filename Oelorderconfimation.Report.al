report 50226 "Oel order confimation"
{
    UsageCategory = Administration;
    ApplicationArea = all;
    DefaultLayout = RDLC;
    RDLCLayout = 'layout/RDLCReports.rdl';
    //WordLayout = 'layout\MyWordLayout.docx';
    dataset
    {
        dataitem("Oel Header"; "Oel Header")
        {
            RequestFilterFields = "No.";
            column("No"; "No.")
            {
            }
            column(Sell_To_Customer_No_; "Sell-To-Customer No.")
            {
            }
            column(Full_Name; "Full Name")
            {
            }
            column(Address; Address) { }
            column(Address_2; "Address 2") { }
            column(Email; Email) { }
            column(Phone_No_; "Phone No.") { }
            column(Language_Code; "Language Code") { }
            column(Website; Website) { }
            column(Country_Region_Code; "Country/Region Code") { }
            column(City; City) { }
            column(Post_Code; "Post Code") { }

            trigger OnAfterGetRecord()
            begin

            end;

        }
        dataitem("Oel line"; "Oel line")
        {
            column(Document_no; "Document no") { }
            column(Line_No_; "Line No.") { }
            column(Oel_No_; "Oel No.") { }
            column(Oel_Title; "Oel Title") { }
            column(Price__LCY_; "Price (LCY)") { }
            column(Line_Unit; "Line Unit") { }
            column(Line_Sum; "Line Sum")
            {
            }

            trigger OnAfterGetRecord()
            begin
                SetRange("Oel line"."Document no", "Oel Header"."No.");
            end;
        }
    }
    trigger OnPreReport()
    var
        CompanyInformation_loc: Record "Company Information";
    begin
        CompanyInformation_loc.GET();
    end;

    trigger OnPostReport()
    var
    begin
    end;

}
