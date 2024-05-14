page 70012 EFCEggProductionLineList
{
    PageType = List;
    SourceTable = EFCEggProductionLine;
    UsageCategory = None;
    Editable = false;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("EFCChickenNo."; Rec."EFCChickenNo.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken No. field.';
                }
                field(EFCChickenDescription; Rec.EFCChickenDescription)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Description field.';
                }
                field("EFCDocumentNo."; Rec."EFCDocumentNo.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field(EFCEggProductionDate; Rec.EFCEggProductionDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Egg Production Date field.';
                }
                field(EFCEggTypeCode; Rec.EFCEggTypeCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Egg Type Code field.';
                }
                field(EFCQuantity; Rec.EFCQuantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
            }
        }
    }
}
