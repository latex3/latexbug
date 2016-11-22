#!/usr/bin/env texlua

-- Build script for "latexbug" files

-- Identify the bundle and module
bundle = ""
module = "latexbug"

-- Release a TDS-style zip
packtdszip = true

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))
