#!/bin/bash
export DISABLE_AUTOBREW=1
case ${target_platform} in linux* )
  xvfb_run='xvfb-run -a --'
esac
${xvfb_run-} \
  ${R} CMD INSTALL --build . ${R_ARGS}
