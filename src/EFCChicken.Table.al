table 70000 EFCChicken
{
    DataClassification = CustomerContent;
    DrillDownPageId = EFCChickenList;
    LookupPageId = EFCChickenCard;

    fields
    {
        field(1; EFCNo; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; EFCDescription; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; EFCChickenTypeCode; Code[20])
        {
            Caption = 'Chicken Type Code';
            DataClassification = CustomerContent;
            TableRelation = EFCChickenType;
            
            trigger OnValidate()
            begin
              CalcFields(EFCChickenTypeDescription)
            end;
        }
        field(4; EFCLastDateModified; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(5; EFCPicture; MediaSet)
        {
            Caption = 'Picture';
            DataClassification = CustomerContent;
        }
        field(6; EFCChickenTypeDescription; Text[100])
        {
            Caption = 'Chicken Type Description';
            FieldClass = FlowField;
            CalcFormula = lookup(EFCChickenType.EFCDescription where(EFCCode = field("EFCChickenTypeCode")));
            Editable = false;
        }
        field(7; EFCNumberOfEggProduced; Decimal)
        {
            Caption = 'Number Of Egg Produced';
            FieldClass = FlowField;
            CalcFormula = sum(EFCEggProductionLine.EFCQuantity where("EFCChickenNo." = field(EFCNo),
                                                                     EFCEggProductionDate = field(EFCDateFilter), 
                                                                     EFCEggTypeCode = field(EFCEggTypeFilter)));
            Editable = false;
        }
        field(8; EFCDateFilter; Date)
        {
          Caption = 'Date Filter';
          FieldClass = FlowFilter;
        }
        field(9; EFCEggTypeFilter; Code[20])
        {
          Caption = 'Egg Type Filter';
          FieldClass = FlowFilter;
          TableRelation = EFCEggType;
        }
        
    }
  
  keys
  {
    key(PK; EFCNo)
    {
      Clustered = true;
    }

  }

  fieldgroups
    {
      fieldgroup(DropDown; EFCDescription, EFCChickenTypeCode) { }

      fieldgroup(Brick; EFCDescription, EFCPicture) { }
    }

  trigger OnDelete()
  var
    EggProductionLine: Record EFCEggProductionLine;
    ChickenHasEggsErr: Label 'The Chicken %1 %2 has eggs, you can"t delete it.', Comment = '%1 = Chicken No.; %2 = Chicken Description';
  begin
    Clear(EggProductionLine);
    EggProductionLine.SetFilter("EFCChickenNo.", EFCNo);
    if not EggProductionLine.IsEmpty() then
      Error(ChickenHasEggsErr, EFCNo, EFCDescription)
  end;
}