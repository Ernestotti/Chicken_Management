page 70003 EFCChickenCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = EFCChicken;
    UsageCategory = None;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field(EFCNo; Rec.EFCNo)
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field(EFCDescription; Rec.EFCDescription)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
                field(EFCChickenTypeCode; Rec.EFCChickenTypeCode)
                {
                    ToolTip = 'Specifies the value of the Chicken Type Code field.';
                    ApplicationArea = All;
                }
                field(EFCChickenTypeDescription; Rec.EFCChickenTypeDescription)
                {
                     ToolTip = 'Specifies the value of the Chicken Type Code field.';
                     ApplicationArea = All;
                }
                field(EFCLastDateModified; Rec.EFCLastDateModified)
                {
                    ToolTip = 'Specifies the value of the Last Date Modified field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(EFCPicture; Rec.EFCPicture)
                {
                    ToolTip = 'Specifies the value of the Picture field.';
                    ApplicationArea = All;
                }
                field(EFCNumberOfEggProduced; Rec.EFCNumberOfEggProduced)
                {
                    ToolTip = 'Specifies the value of the Number Of Egg Produced field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
