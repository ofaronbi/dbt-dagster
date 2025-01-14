from dagster import AssetExecutionContext
from dagster_dbt import DbtCliResource, dbt_assets

from .project import E_com_analysis_project


@dbt_assets(manifest=E_com_analysis_project.manifest_path)
def E_com_analysis_dbt_assets(context: AssetExecutionContext, dbt: DbtCliResource):
    yield from dbt.cli(["build"], context=context).stream()
    