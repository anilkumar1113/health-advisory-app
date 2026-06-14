#!/bin/bash
systemctl daemon-reload
systemctl enable healthwise
systemctl start healthwise
