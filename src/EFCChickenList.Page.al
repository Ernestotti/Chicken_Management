page 70004 EFCChickenList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EFCChicken;
    CardPageId = EFCChickenCard;
    Caption = 'EFC Chicken List';
    Editable = false;
    
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
                field(EFCDescription; Rec.EFCDescription)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(EFCChickenTypeCode; Rec.EFCChickenTypeCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Type Code field.';
                }
                field(EFCNumberOfEggProduced; Rec.EFCNumberOfEggProduced)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Number Of Egg Produced field.';
                }
            }
        }
    }
}
