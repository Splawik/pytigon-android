#!/usr/bin/env python
import os
import sys

PRJ_NAME = "_schall"
PORT = "8000"

base_path = os.path.dirname(os.path.abspath(__file__))
sys.path.append(os.path.abspath(os.path.join(base_path, "_android")))


if "PYTHON_SERVICE_ARGUMENT" in os.environ:
    PRJ_NAME = os.environ["PYTHON_SERVICE_ARGUMENT"]

os.environ["PYTIGON_DEBUG"] = "1"

from pytigon.pytigon_run import run

if __name__ == "__main__":
    cmd = ["android", "runserver_" + PRJ_NAME, "-b", "0.0.0.0", "-p", PORT]
    run(cmd)
