
module Dqb2
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "1.0.3"

include("jl/''_dash_query_builder.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dqb2",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dqb2.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dqb2.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
