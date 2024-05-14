page 70013 EFCChickenManagementRoleCenter
{
  PageType = RoleCenter;
  ApplicationArea = All;
  UsageCategory = None;
  
  layout
  {
    area(RoleCenter)
    {
      part(HeadLineOrderProcessor; "Headline RC Order Processor")
      {
        ApplicationArea = All;
      }
      part(O365CustomerActivity; "O365 Customer Activity Page")
      {
        ApplicationArea = All;
      }
      part(O365Activities; "O365 Activities")
      {
        ApplicationArea = All;
      }
    }
  }
  
  actions
  {
    area(Sections)
    {
      group(MasterData)
      {
        Caption = 'Master Data';
        Image = RegisteredDocs;
        action(ChickenList)
        {
          Caption = 'Chicken List';
          ApplicationArea = All;
          RunObject = page EFCChickenList;
        }
        action(ChickenTypes)
        {
          Caption = 'Chicken Types';
          ApplicationArea = All;
          RunObject = page EFCChickenTypes;
        }
      }
      group(Documents)
      {
        action(EggProduction)
        {
          Caption = 'Egg Production';
          ApplicationArea = All;
          RunObject = page EFCEggProductionList;
        }
        action(EggTypes)
        {
          Caption = 'Egg Types';
          ApplicationArea = All;
          RunObject = page EFCEggTypes;
        }
      }
    }
    area(Embedding)
    {
      action(eChickenList)
      {
        Caption = 'Chicken List';
        ApplicationArea = All;
        RunObject = page EFCChickenList;
      }
      action(eChickenTypes)
      {
        Caption = 'Chicken Types';
          ApplicationArea = All;
          RunObject = page EFCChickenTypes;
      }
      action(eEggProduction)
      {
        Caption = 'Egg Production';
          ApplicationArea = All;
          RunObject = page EFCEggProductionList;
      }
      action(eEggTypes)
      {
        Caption = 'Egg Types';
          ApplicationArea = All;
          RunObject = page EFCEggTypes;
      }
    }
  }
}