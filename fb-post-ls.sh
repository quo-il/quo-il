#!/bin/bash

echo "עדכון באתר!"
echo "מפלגות:"
ls -t1 _parties/ | sed 's/\.md//'
echo "פוליטיקאים:"
ls -t1 _people/ | sed 's/\.md//'
echo "כנסו: https://quo-il.org/"
 