from sqlalchemy import MetaData
from server.database.create import Base

# fields = {
#     "default": {},
#     "example": {
#         "qty": {
#             "label": "Qty",
#             "type": "number",
#             "fieldSettings": {"min": 0},
#             "valueSources": ["value"],
#             "preferWidgets": ["number"],
#         },
#         "price": {
#             "label": "Price",
#             "type": "number",
#             "valueSources": ["value"],
#             "fieldSettings": {"min": 10, "max": 100},
#             "preferWidgets": ["slider", "rangeslider"],
#             "operators": ["equal", "between"],
#         },
#         "color": {
#             "label": "Color",
#             "type": "select",
#             "valueSources": ["value"],
#             "fieldSettings": {
#                 "listValues": [
#                     {"value": "yellow", "title": "Yellow"},
#                     {"value": "green", "title": "Green"},
#                     {"value": "orange", "title": "Orange"},
#                 ]
#             },
#         },
#         "is_promotion": {
#             "label": "Promo?",
#             "type": "boolean",
#             "operators": ["equal", "is_empty"],
#             "valueSources": ["value"],
#         },
#     },
#     "drug": {
#         "bla_number": {
#             "label": "BLA Number",
#             "type": "number",
#             "fieldSettings": {"min": 0},
#         },
#         "proper_name": {
#             "label": "Proper Name",
#             "type": "text",
#         },
#         "applicant": {
#             "label": "Applicant",
#             "type": "text",
#         },
#         "approval_date": {
#             "label": "Approval Date",
#             "type": "date",
#         },
#         "date_of_first_licensure": {
#             "label": "Date Of First Licensure",
#             "type": "date",
#         },
#         "ref_product_proper_name": {
#             "label": "Ref. Product Proper Name",
#             "type": "text",
#         },
#         "ref_product_proprietary_name": {
#             "label": "Ref Product Proprietary Name",
#             "type": "text",
#         },
#         "orphan_exclusivity_exp_date": {
#             "label": "Orphan Exclusivity Exp Date",
#             "type": "date",
#         },
#     },
#     "product": {
#         "bla_number": {
#             "label": "BLA Number",
#             "type": "number",
#             "fieldSettings": {"min": 0},
#             "valueSources": ["value"],
#             "preferWidgets": ["number"],
#         },
#         "proper_name": {
#             "label": "Proper Name",
#             "type": "text",
#         },
#         "applicant": {
#             "label": "Applicant",
#             "type": "text",
#         },
#         "approval_date": {
#             "label": "Approval Date",
#             "type": "date",
#         },
#         "date_of_first_licensure": {
#             "label": "Date Of First Licensure",
#             "type": "date",
#         },
#         "ref_product_proper_name": {
#             "label": "Ref. Product Proper Name",
#             "type": "text",
#         },
#         "ref_product_proprietary_name": {
#             "label": "Ref Product Proprietary Name",
#             "type": "text",
#         },
#         "orphan_exclusivity_exp_date": {
#             "label": "Orphan Exclusivity Exp Date",
#             "type": "date",
#         },
#     },
# }

metadata: MetaData = Base.metadata

t = {
    table: {c.name: c.type for c in columns.c}
    for table, columns in metadata.tables.items()
}

types = {
    "VARCHAR": "text",
    "STRING": "text",
    "INTEGER": "number",
    "DATE": "date",
    "BOOLEAN": "boolean",
    "ENUM": "select",
}


def make_title(name: str) -> str:
    return " ".join([word.capitalize() for word in name.split("_")])


fields = {}

for table in t:
    d = {}
    for column, type in t[table].items():
        title = make_title(column)
        type_name = types[type.__visit_name__.upper()]
        if hasattr(type, "unsigned"):
            fieldSettings = {"min": 0}
        elif type_name == "select":
            fieldSettings = {
                "listValues": [{"value": e, "title": e} for e in type.enums]
            }
        else:
            fieldSettings = {}

        d[column] = {
            "label": title,
            "type": type_name,
            "fieldSettings": fieldSettings,
            "valueSources": ["value"],
        }
    fields[table] = d
