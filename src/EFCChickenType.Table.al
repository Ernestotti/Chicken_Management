table 70001 EFCChickenType
{
    Caption = 'Chicken Type';
    DataClassification = CustomerContent;
    DrillDownPageId = EFCChickenTypes;
    LookupPageId = EFCChickenTypes;
    
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
}
