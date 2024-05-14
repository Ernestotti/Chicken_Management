page 70005 EFCChickenTypes
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EFCChickenType;
    Caption = 'EFC Chicken Types';
    Editable = true;  
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(EFCCode; Rec.EFCCode)
                {
                    ToolTip = 'Specifies the value of the Code field.';
                    ApplicationArea = All;
                }
                field(EFCDescription; Rec.EFCDescription)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
