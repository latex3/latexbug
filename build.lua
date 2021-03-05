#!/usr/bin/env texlua

-- Build script for "latexbug" files

-- Identify the bundle and module
bundle = ""
module = "latexbug"

-- Release a TDS-style zip
packtdszip = true



-- Upload meta data

uploadconfig = {
 pkg = "latexbug",
 version = "v1.0j 2021-03-05",
 author = "The LaTeX Team",
 license = "lppl1.3c",
 summary = "Bug-classification for LaTeX related bugs",
 ctanPath = "/macros/latex/required/latexbug",
 repository = "https://github.com/latex3/latexbug",
 uploader = "Frank Mittelbach",
 email = "frank.mittelbach@latex-project.org",
 update = true ,
}


checkruns = 2  -- needed for hyperref tests to gen all help files

-- Find and run the build system

if not release_date then
   kpse.set_program_name("kpsewhich")
   dofile(kpse.lookup("l3build.lua"))
end

