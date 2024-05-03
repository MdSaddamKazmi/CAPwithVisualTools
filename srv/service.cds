using { MdSaddamKazmi.StudentDetails as my } from '../db/schema';

@path : '/service/Project_Student_DetailsSvcs'
service StudentServiceService
{
    @odata.draft.enabled
    entity School as
        projection on my.School;

    entity Student as
        projection on my.Student;
}

// annotate StudentServiceService with @requires :
// [
//     'authenticated-user'
// ];
