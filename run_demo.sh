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

# End of first tutorial / 2nd tutorial

# Created new sql moms_flower_shop/models/analytics/dim_marketing_campaigns.sql

# Validate the Model Through Static Analysis

sdf compile

sdf run analytics.dim_marketing_campaigns

# Debugging

# Understand Column Lineage

sdf lineage analytics.dim_marketing_campaigns --column total_num_installs

# Compare similar data

sdf lineage staging.customers --column campaign_id

# Make fix _v2

sdf compile 

sdf lineage staging.stg_installs_per_campaign --forward

sdf run analytics.dim_marketing_campaigns




