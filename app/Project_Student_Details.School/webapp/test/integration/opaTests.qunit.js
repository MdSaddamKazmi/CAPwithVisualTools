sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ProjectStudentDetails/School/test/integration/FirstJourney',
		'ProjectStudentDetails/School/test/integration/pages/SchoolList',
		'ProjectStudentDetails/School/test/integration/pages/SchoolObjectPage',
		'ProjectStudentDetails/School/test/integration/pages/StudentObjectPage'
    ],
    function(JourneyRunner, opaJourney, SchoolList, SchoolObjectPage, StudentObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ProjectStudentDetails/School') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSchoolList: SchoolList,
					onTheSchoolObjectPage: SchoolObjectPage,
					onTheStudentObjectPage: StudentObjectPage
                }
            },
            opaJourney.run
        );
    }
);