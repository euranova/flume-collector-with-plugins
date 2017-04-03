#!/bin/sh

cd /opt/apache-flume-bin/plugins.d
for f in /plugins/*.tar.gz; do
  tar -xf $f
done

/opt/apache-flume-bin/bin/flume-ng agent \
    -c conf \
    -f /collector.conf \
    --name $FLUME_AGENT \
    -Dflume.root.logger=INFO,console