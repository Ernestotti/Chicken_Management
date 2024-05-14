page 70006 EFCEggTypes
{
    ApplicationArea = All;
    Caption = 'EFC Egg Types';
    PageType = List;
    SourceTable = EFCEggType;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(EFCCode; Rec.EFCCode)
                {
                    caption = 'Code';
                    ToolTip = 'Specifies the value of the Code field.';
                    ApplicationArea = All;
                }
                field(EFCDescription; Rec.EFCDescription)
                {
                    caption = 'Description';
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(InsertDefaultEggTypes)
            {
                ApplicationArea = All;
                ToolTip = 'InsertDefaultEggTypes';
                Caption = 'InsertDefaultEggTypes';
                Image = Insert;

                trigger OnAction()
                var
                    EggType: Record EFCEggType;
                    EggTypeNotEmptyErr: Label 'There are already Egg Types in the table';
                begin
                    if EggType.IsEmpty then begin
                        EggType.InsertEggType('Egg1', 'Description Egg 1');
                        EggType.InsertEggType('Egg2', 'Description Egg 2');
                        EggType.InsertEggType('Egg3', 'Description Egg 3');
                    end else
                        Error(EggTypeNotEmptyErr);
                end;
            }
        }
    }
}
