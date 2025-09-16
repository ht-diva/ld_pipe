

from pathlib import Path
import pandas as pd

# Define input for the rules
# read loci list
df = pd.read_csv(config["path_network_summary"])
data = (
    pd.DataFrame(df, columns=["hotspot2"])
    .set_index("hotspot2", drop=False)
    .sort_index()
)


def ws_path(file_path):
    return str(Path(config.get("workspace_path"), file_path))


