tableextension 50100 "CSD Resource Extension" extends Resource
{
    fields
    {
        modify("Type")
        {
            OptionCaption = 'Instructor,Room';
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Testfield("Unit Cost");
            end;
        }
        field(50100; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = Internal,External;
        }
        field(50101; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(50102; "CSD Quantity per Day"; Decimal)
        {
            Caption = 'Quantity per Day';
        }
    }

    var
        myInt: Integer;
}