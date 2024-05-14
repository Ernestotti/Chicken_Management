table 70008 EFCEggProductionLine
{
    Caption = 'EFC Egg Production Line';
    DataClassification = CustomerContent;
    DrillDownPageId = EFCEggProductionLineList;
    
    fields
    {
        field(1; "EFCDocumentNo."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(2; "EFCLineNo."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "EFCChickenNo."; Code[20])
        {
            Caption = 'Chicken No.';
            DataClassification = CustomerContent;
            TableRelation = EFCChicken;

            trigger OnValidate()
            begin
                CalcFields(EFCChickenDescription)
            end;
        }
        field(4; EFCChickenDescription; Text[100])
        {
            Caption = 'Chicken Description';
            FieldClass = FlowField;
            CalcFormula = lookup(EFCChicken.EFCDescription where(EFCNo = field("EFCChickenNo.")));
            Editable = false;
            
        }
        field(5; EFCEggProductionDate; Date)
        {
            Caption = 'Egg Production Date';
            DataClassification = CustomerContent;
        }
        field(6; EFCEggTypeCode; Code[20])
        {
            Caption = 'Egg Type Code';
            TableRelation = EFCEggType;
        }
        field(7; EFCEggTypeDescription; Text[100])
        {
            Caption = 'Egg Type Description';
            FieldClass = FlowField;
            CalcFormula = lookup(EFCEggType.EFCDescription where(EFCCode = field(EFCEggTypeCode)));
            Editable = false;
        }
        field(8; EFCQuantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "EFCDocumentNo.", "EFCLineNo.")
        {
            Clustered = true;
        }
    }
}
