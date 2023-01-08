using RiskService as service from '../../srv/risk-service';

annotate RiskService.Risks with @(UI: {
    HeaderInfo     : {
        TypeName      : 'Risk',
        TypeNamePlural: 'Risks',
        Title         : {
            $Type: 'UI.DataField',
            Value: title
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: descr,
        }
    },

    SelectionFields: [prio],
    Identification : [{Value: title}],

    LineItem       : [
        {
            $Type: 'UI.DataField',
            Value: title,
        },
        {
            $Type: 'UI.DataField',
            Value: miti_ID,
        },
        {
            $Type: 'UI.DataField',
            Value: bp_BusinessPartner,
        },
        {
            $Type: 'UI.DataField',
            Value: owner,
        },
        {
            $Type      : 'UI.DataField',
            Value      : prio,
            Criticality: criticality,
        },
        {
            $Type      : 'UI.DataField',
            Value      : impact,
            Criticality: impact,
        },
    ],
});

annotate RiskService.Risks with @(UI: {
    Facets          : [{
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup#Main',
        Label : 'Main',
    }, ],
    FieldGroup #Main: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: miti_ID,
            },
            {
                $Type: 'UI.DataField',
                Value: bp_BusinessPartner,
            },
            {
                $Type: 'UI.DataField',
                Value: owner,
            },
            {
                $Type      : 'UI.DataField',
                Value      : prio,
                Criticality: criticality,
            },
            {
                $Type      : 'UI.DataField',
                Value      : impact,
                Criticality: criticality,
            },
        ],
    },
});
