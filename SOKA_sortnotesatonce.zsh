#!/usr/bin/env zsh
cd ~/Documents/GitHub/SOKA_v3

#!/usr/bin/env zsh
set -euo pipefail
setopt NULL_GLOB

for f in *_*.md(.N); do
  stem=${f#*_}                        
  spec=${stem%%[0-9]*}               
  [[ -z $spec ]] && continue
  mkdir -p -- "$spec"
  mv -- "$f" "$spec/$stem"
done