sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/alerts/test/integration/FirstJourney',
		'ns/alerts/test/integration/pages/AlertsList',
		'ns/alerts/test/integration/pages/AlertsObjectPage'
    ],
    function(JourneyRunner, opaJourney, AlertsList, AlertsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/alerts') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAlertsList: AlertsList,
					onTheAlertsObjectPage: AlertsObjectPage
                }
            },
            opaJourney.run
        );
    }
);