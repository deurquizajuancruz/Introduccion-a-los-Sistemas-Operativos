#!/bin/bash
ls |tr '[:lower:][:upper:]' '[:upper:][:lower:]' | tr -d 'aA'
