from dagster import Definitions
from dagster_dbt import DbtCliResource
from .assets import E_com_analysis_dbt_assets
from .project import E_com_analysis_project
from .schedules import schedules

defs = Definitions(
    assets=[E_com_analysis_dbt_assets],
    schedules=schedules,
    resources={
        "dbt": DbtCliResource(project_dir=E_com_analysis_project),
    },
)