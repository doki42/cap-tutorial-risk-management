namespace sap.ui.riskmanagement;
using { managed } from '@sap/cds/common';

  entity Risks : managed {
    key ID      : UUID  @(Core.Computed : true);
    title       : String(100);
    prio        : String(5);
    descr       : String;
    miti        : Association to Mitigations;
    impact      : Integer;
    criticality : Integer;
  }

  entity Mitigations : managed {
    key ID       : UUID  @(Core.Computed : true);
    description  : String;
    owner        : String;
    timeline     : String;
    risks        : Association to many Risks on risks.miti = $self;
  }

  entity Alerts : managed {
    key ID      : UUID @(Core.Computed : true);
    fullName    : String;
    age         : Integer;
    value       : String;
    valueSys    : Integer;
    valueDia    : Integer;
    valuePulse  : Integer;
    overThreshold: Boolean;
    type        : String;
    datetime    : DateTime;
    tableName   : String;
    code        : DateTime;
  }
