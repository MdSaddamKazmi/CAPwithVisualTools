sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ProjectStudentDetails/student/test/integration/FirstJourney',
		'ProjectStudentDetails/student/test/integration/pages/StudentList',
		'ProjectStudentDetails/student/test/integration/pages/StudentObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentList, StudentObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ProjectStudentDetails/student') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentList: StudentList,
					onTheStudentObjectPage: StudentObjectPage
                }
            },
            opaJourney.run
        );
    }
);