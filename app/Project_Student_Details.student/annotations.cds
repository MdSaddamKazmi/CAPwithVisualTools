using StudentServiceService as service from '../../srv/service';
annotate service.Student with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'student_id',
                Value : student_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dateOfBirth',
                Value : dateOfBirth,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dateOfJoining',
                Value : dateOfJoining,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phoneNumber',
                Value : phoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'school_school_id',
                Value : school_school_id,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'student_id',
            Value : student_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'firstName',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'lastName',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'dateOfBirth',
            Value : dateOfBirth,
        },
        {
            $Type : 'UI.DataField',
            Label : 'dateOfJoining',
            Value : dateOfJoining,
        },
    ],
);

annotate service.Student with {
    school @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'School',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : school_school_id,
                ValueListProperty : 'school_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'SchoolName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Principal',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'SchoolStrength',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Curriculum',
            },
        ],
    }
};

annotate service.Student with @(
    UI.SelectionFields : [
        student_id,
    ]
);
annotate service.Student with {
    student_id @Common.Label : 'student_id'
};
annotate service.Student with {
    student_id @Common.Text : firstName
};
