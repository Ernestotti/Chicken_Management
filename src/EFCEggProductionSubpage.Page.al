page 70011 EFCEggProductionSubpage
{
    ApplicationArea = All;
    Caption = 'EFC Egg Production Subpage';
    PageType = ListPart;
    SourceTable = EFCEggProductionLine;
    AutoSplitKey = true;
    DelayedInsert = true;
    UsageCategory = None;
    
    layout
    {
        area(content)
        {
            repeater(EFCEggProductionSubpage)
            {
                field("EFCChickenNo."; Rec."EFCChickenNo.")
                {
                    ToolTip = 'Specifies the value of the Chicken No. field.';
                    ApplicationArea = All;
                }
                field(EFCChickenDescription; Rec.EFCChickenDescription)
                {
                    ToolTip = 'Specifies the value of the Chicken Description field.';
                    ApplicationArea = All;
                }
                field(EFCEggProductionDate; Rec.EFCEggProductionDate)
                {
                    ToolTip = 'Specifies the value of the Egg Production Date field.';
                    ApplicationArea = All;
                }
                field(EFCEggTypeCode; Rec.EFCEggTypeCode)
                {
                    ToolTip = 'Specifies the value of the Egg Type Code field.';
                    ApplicationArea = All;
                }
                field(EFCQuantity; Rec.EFCQuantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
