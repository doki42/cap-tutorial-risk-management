using AlertService from './alert-service';

annotate AlertService.Alerts with {
	datetime        @title: 'Mérés időpontja';
    fullName       @title: 'Páciens';
	value        @title: 'Mért érték';
    type       @title: 'Mérés fajtája';
	
}

annotate AlertService.Alerts with @(
	UI: {
		HeaderInfo: {
			TypeName: 'Figyelmeztetés',
			TypeNamePlural: 'Figyelmeztetések',
			Title          : {
                $Type : 'UI.DataField',
                Value : fullName
            },
			Description : {
				$Type: 'UI.DataField',
				Value: datetime
			}
		},
		SelectionFields: [fullName],
		LineItem: [
			{Value: datetime},
            {Value: fullName},
			
			{
				Value: value,
			},
			{
				Value: type,
			},
			
		]
		
	},
) {
}