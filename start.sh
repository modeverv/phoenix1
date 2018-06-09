#! /bin/bash

#mix deps.get --only prod
mix deps.get
MIX_ENV=prod mix compile
#brunch build --production
#MIX_ENV=prod mix phoenix.digest
PORT=4000 MIX_ENV=prod elixir --detached -e "File.write! 'pid', :os.getpid" -S mix phoenix.server
ps aux|grep elixir
