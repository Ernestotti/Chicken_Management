codeunit 70014 EFCInstallation
{
  Subtype = Install;

  trigger OnInstallAppPerCompany()
  begin
    InsertDefaultChickenTypes();
  end;
  
  local procedure InsertDefaultChickenTypes()
  var
    ChickenType: Record EFCChickenType;
  begin
    if not ChickenType.IsEmpty then
      exit;

    InsertChickenType('Chicken1', 'Description Chicken 1');
    InsertChickenType('Chicken2', 'Description Chicken 2');
    InsertChickenType('Chicken3', 'Description Chicken 3');
  end;

  local procedure InsertChickenType(ChickenTypeCode: Code[20]; ChickenTypeDescription: Text[50])
  var
    ChickenType: Record EFCChickenType;
  begin
    Clear(ChickenType);
    ChickenType.EFCCode := ChickenTypeCode;
    ChickenType.EFCDescription := ChickenTypeDescription;
    ChickenType.Insert();
  end;
}