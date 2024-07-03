# 1. Create the Sample Workspace

sdf new --sample moms_flower_shop

# 2. Workspace Overview

cd moms_flower_shop && tree .

# 3. Source Tables

sdf compile models/raw

sdf run models/raw

sdf compile

sdf clean

sdf compile

sdf compile --show all

# End of first tutorial



