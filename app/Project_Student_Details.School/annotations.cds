using StudentServiceService as service from '../../srv/service';
annotate service.School with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'school_id',
                Value : school_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SchoolName',
                Value : SchoolName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Principal',
                Value : Principal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SchoolStrength',
                Value : SchoolStrength,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Curriculum',
                Value : Curriculum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'rating',
                Value : rating,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Students',
            ID : 'Students',
            Target : 'students/@UI.LineItem#Students',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'school_id',
            Value : school_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SchoolName',
            Value : SchoolName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Principal',
            Value : Principal,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SchoolStrength',
            Value : SchoolStrength,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Curriculum',
            Value : Curriculum,
        },
    ],
);

annotate service.Student with @(
    UI.LineItem #Students : [
        {
            $Type : 'UI.DataField',
            Value : student_id,
            Label : 'student_id',
        },{
            $Type : 'UI.DataField',
            Value : lastName,
            Label : 'lastName',
        },{
            $Type : 'UI.DataField',
            Value : firstName,
            Label : 'firstName',
        },{
            $Type : 'UI.DataField',
            Value : email,
            Label : 'email',
        },]
);
annotate service.School with @(
    UI.SelectionFields : [
        school_id,
    ]
);
annotate service.School with {
    school_id @Common.Label : 'school_id'
};
annotate service.School with {
    school_id @Common.Text : SchoolName
};
annotate service.Student with @(
    UI.HeaderInfo : {
        TypeName : 'student_id',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : student_id,
        },
    }
);
