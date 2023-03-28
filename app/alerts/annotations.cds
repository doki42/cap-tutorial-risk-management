using AlertService as service from '../../srv/alert-service';
using from '../../srv/alert-service-ui';

annotate service.Alerts with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : fullName,
                Label : '{i18n>Pciens}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Age}',
                Value : age,
            },
            {
                $Type : 'UI.DataField',
                Value : value,
                Label : '{i18n>MrtRtk}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Valuesys}',
                Value : valueSys,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Valuedia}',
                Value : valueDia,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Valuepulse}',
                Value : valuePulse,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Overthreshold}',
                Value : overThreshold,
            },
            {
                $Type : 'UI.DataField',
                Value : type,
                Label : '{i18n>MrsFajtja}',
            },
            {
                $Type : 'UI.DataField',
                Value : datetime,
                Label : '{i18n>MrsIdpontja}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Tablename}',
                Value : tableName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Code}',
                Value : code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Alerts with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : datetime,
            Label : '{i18n>MrsIdpontja}',
        },
        {
            $Type : 'UI.DataField',
            Value : fullName,
            Label : '{i18n>Pciens}',
        },
        {
            $Type : 'UI.DataField',
            Value : value,
            Label : '{i18n>MrtRtk}',
        },
        {
            $Type : 'UI.DataField',
            Value : type,
            Label : '{i18n>MrsFajtja}',
        },
    ]
);
annotate service.Alerts with {
    value @UI.MultiLineText : true
};
annotate service.Alerts with {
    fullName @Common.Label : '{i18n>Pciens}'
};
annotate service.Alerts with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>Figyelmeztets}',
        TypeNamePlural : '{i18n>Figyelmeztetsek}',
        Title : {
            $Type : 'UI.DataField',
            Value : fullName,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : value,
        },
    }
);
