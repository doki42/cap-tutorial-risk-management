using { sap.ui.alertmanagement as my } from '../db/schema-alert';

@path: 'service/alert'
service AlertService {
    entity Alerts as projection on my.Alerts
    annotate Alerts with @odata.draft.enabled;
}
