import dash
from dash import Input, Output, html, State
from dash.exceptions import PreventUpdate

import json

import dqb2

app = dash.Dash(__name__)
fields = {
    "fields": {
        "qty": {
            "label": "Qty",
            "type": "number",
            "fieldSettings": {"min": 0},
            "valueSources": ["value"],
            "preferWidgets": ["number"],
        },
        "price": {
            "label": "Price",
            "type": "number",
            "valueSources": ["value"],
            "fieldSettings": {"min": 10, "max": 100},
            "preferWidgets": ["slider", "rangeslider"],
        },
        "color": {
            "label": "Color",
            "type": "select",
            "valueSources": ["value"],
            "fieldSettings": {
                "listValues": [
                    {"value": "yellow", "title": "Yellow"},
                    {"value": "green", "title": "Green"},
                    {"value": "orange", "title": "Orange"},
                ]
            },
        },
        "is_promotion": {
            "label": "Promo?",
            "type": "boolean",
            "operators": ["equal", "is_empty"],
            "valueSources": ["value"],
        },
    },
    "fields2": {
        "qty2": {
            "label": "qty2",
            "type": "number",
            "fieldSettings": {"min": 0},
            "valueSources": ["value"],
            "preferWidgets": ["number"],
        },
        "Price2": {
            "label": "Price2",
            "type": "number",
            "valueSources": ["value"],
            "fieldSettings": {"min": 10, "max": 100},
            "preferWidgets": ["slider", "rangeslider"],
        },
        "color2": {
            "label": "Color2",
            "type": "select",
            "valueSources": ["value"],
            "fieldSettings": {
                "listValues": [
                    {"value": "yellow", "title": "Yellow"},
                    {"value": "green", "title": "Green"},
                    {"value": "orange", "title": "Orange"},
                ]
            },
        },
    },
}
app.layout = html.Div(
    [
        html.Button("Toggle Dynamic", id="dynamic-toggle"),
        html.Button("Load Json", id="load-json"),
        html.Button("Save Json", id="save-json"),
        dqb2.dash_query_builder(
            id="dqb",
            dynamic=True,
            fields=fields["fields"],
            theme="bootstrap",
        ),
        html.Hr(),
        html.Div(id="sql-output"),
        html.Div(id="json-output"),
    ]
)


@app.callback(
    Output("sql-output", "children"),
    Input("dqb", "sqlFormat"),
)
def display_sql_output(query):
    return html.Div(query)


@app.callback(
    Output("json-output", "children"),
    State("dqb", "jsonLogicFormat"),
    Input("save-json", "n_clicks"),
    prevent_initial_call=True,
)
def display_json_output(query, n_clicks):
    if query:
        return json.dumps(query)

    raise PreventUpdate


@app.callback(
    Output("dqb", "loadFormat"),
    Output("dqb", "jsonLogicFormat"),
    Input("load-json", "n_clicks"),
    State("json-output", "children"),
    prevent_initial_call=True,
)
def load_sql(n_clicks, json_output):
    if json_output:
        print(json_output)
        return (
            "jsonLogicFormat",
            json.loads(json_output),
        )

    raise PreventUpdate


@app.callback(
    Output("dqb", "dynamic"),
    Input("dynamic-toggle", "n_clicks"),
    prevent_initial_call=True,
)
def toggle_dyanmic(n_clicks):
    return n_clicks % 2 == 1


if __name__ == "__main__":
    app.run_server(debug=True)
