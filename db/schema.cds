namespace MdSaddamKazmi.StudentDetails;

using {
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
} from '@sap/cds/common';

entity Student {
    key student_id    : Integer;
        firstName     : String(100);
        lastName      : String(100);
        dateOfBirth   : Date;
        dateOfJoining : Date;
        email         : String(100);
        phoneNumber   : String(100);
        school        : Association to one School;
}

entity School {
    key school_id      : Integer;
        SchoolName     : String(100);
        Principal      : String(100);
        SchoolStrength : Integer;
        Curriculum     : String(100);
        rating         : String(100);
        students       : Composition of many Student
                             on students.school = $self;
}
