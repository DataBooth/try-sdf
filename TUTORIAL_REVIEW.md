## SDF Getting Started Tutorial feedback

https://docs.sdf.com/tutorials/tutorials-intro

Typo: `moms_flower_shop/metadata/raw/raw_inapp_events.sdf.yml` & `moms_flower_shop/metadata/raw/raw_inapp_events.sdf.yml` (C. These typos are propagated in the web docs).

    - name: additional_details
      description: >
        A JSON containing additional details about the order. 
        For exmaple, upon 

Also lots of mom s - maybe mom’s ? And other .yml files

—

Typo: moms_flower_shop/metadata/raw/raw_customers.sdf.yml

  columns:
    - name: id
      description: A unique identifier of a mom s floewr shop customer

—

Typo: moms_flower_shop/metadata/raw/raw_inapp_events.sdf.yml

    - name: event_id
      description: A unique identifier of an in-app event within mom s flower shop s mobile app

Typo: moms_flower_shop/metadata/raw/raw_marketing_campaign_events.sdf.yml

table:
  name: raw_marketing_campaign_events
  description: >
    An hourly table logging marketing campaigns. If a campaign is running that hour, it will be logged in the table. 
    If no campaigns are running for a certain houe, no campaigns will be logged.

—

Typo: moms_flower_shop/models/staging/app_installs.sql and _v2.sql too

-- marketing campaigns data - if doesn't exist than organic

—

Suggestion: Better formatting for the description / text-wrapping?  (Maybe use rich-like Python module - not sure what Rust has in this space for rich-text formatting). https://github.com/Textualize/rich

Schema moms_flower_shop.raw.raw_marketing_campaign_events
       An hourly table logging marketing campaigns. If a campaign is running that hour, it will be logged in the table.  If no campaigns are running for a certain houe, no campaigns will be logged.

—

Suggestion: For the priority field maybe use a classifier to indicate (clearly) not to use?

priority      ┆ bigint    ┆            ┆ Internal priority - do not use 

—




Miscellaneous Comments / Questions:


Compiling moms_flower_shop.raw.raw_inapp_events (./models/raw/raw_inapp_events.sql)

Expected the directory structure to mirror the labelling here e.g. moms_flower_shop.raw <==> ./raw directory (within moms_flower_shop)

Q. Where does data_type come from? e.g. Inferred from .parquet?

C. Classifier maybe better to be “None” or similar instead of blank? Similarly for the descriptions (these don’t seem to propagate? Maybe some brief representation of the transformation(s))

Q. How do the files/dirs/tables etc. relate to each other? Is there a clear “picture” of this

Q. Can you use .toml (etc) instead of .yml?

C. Example is US-localised - maybe other jurisdictions/languages

C. Let’s say I wanted to use DuckDB SQL dialect can I just do this? What about if I wanted to use if for processing?

C. When using sdf clean might be good to have the option to see what files are removed?

C. When I did clean and compile re-run it was faster than the progressive compile :) Presume very much machine load dependent as these are very short runtimes. E.g. a compile rerun took of the order of 0.4 secs when the total time for a clean compile was ~0.5 secs.