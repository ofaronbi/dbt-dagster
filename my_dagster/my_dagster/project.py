from pathlib import Path

from dagster_dbt import DbtProject

E_com_analysis_project = DbtProject(
    project_dir=Path(__file__).joinpath("..", "..", "..", "E_com_analysis").resolve(),
    packaged_project_dir=Path(__file__).joinpath("..", "..", "dbt-project").resolve(),
)
E_com_analysis_project.prepare_if_dev()