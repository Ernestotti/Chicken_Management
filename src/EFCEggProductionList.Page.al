page 70010 EFCEggProductionList
{
    ApplicationArea = All;
    Caption = 'EFC Egg Production List';
    PageType = List;
    SourceTable = EFCEggProductionHeader;
    UsageCategory = Lists;
    CardPageId = EFCEggProductionDocument;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(EFCNo; Rec.EFCNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(EFCDocumentDate; Rec.EFCDocumentDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Date field.';
                }
            }
        }
    }
}
