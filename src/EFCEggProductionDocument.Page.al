page 70009 EFCEggProductionDocument
{
    ApplicationArea = All;
    Caption = 'EFC Egg Production Document';
    PageType = Document;
    SourceTable = EFCEggProductionHeader;
    UsageCategory = None;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
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
            part(Lines; EFCEggProductionSubpage)
            {
                SubPageLink = "EFCDocumentNo." = field(EFCNo);
                ApplicationArea = All;
            }
        }
    }
}
