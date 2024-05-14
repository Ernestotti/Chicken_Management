table 70002 EFCEggType
{
    Caption = 'EFC Egg Type';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; EFCCode; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; EFCDescription; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; EFCCode)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; EFCCode, EFCDescription) { }
    }

    procedure InsertEggType(EggTypeCode: code[20]; EggTypeDescription: Text[50])
    var
        EggType: Record EFCEggType;
    begin
        Clear(EggType);
        EFCCode := EggTypeCode;
        EFCDescription := EggTypeDescription;
        EggType.Insert()
    end;
}
