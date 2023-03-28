namespace sap.ui.alertmanagement;
using { managed } from '@sap/cds/common';

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