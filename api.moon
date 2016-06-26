-- WIP
{
  "rockspec_format": {
    "description": "the file format version"
  },
  "package": {
    "description": "the name of the package"
  },
  "version": {
    "description": "the version of the package plus a suffix (revision of the rockspec)"
  },
  "description": {
    "summary": {
      description: "a one line description"
    },
    "detailed": {
      description: "a longer description"
    },
    "license": {
      description: "a short name of the license"
    },
    "homepage": {
      description: "an URL for the project"
    },
    "maintainer": {
      description: "contact information for the rockspec maintainer"
    }
  },
  "supported_platforms": {
    "description": "array of strings, if not present then it is considered portable"
  },
  "dependencies": {
    "description": "array of strings"
  },
  "external_dependencies": {
    "description": "table"
  },
  "source": {
    "url": {
      "description": "the URL of the package"
    },
    "md5": {
      "description": "the MD5 sum for the source archive"
    },
    "file": {
      "description": "the filename of the source archive"
    },
    "dir": {
      "description": "the name of the directory created when the source is unpacked"
    },
    "tag": {
      "description": "tag for SCM"
    },
    "branch": {
      "description": "branch of SCM"
    },
    "module": {
      "description": "module for SCM"
    }
  },
  "build": {
    "type": {
      "description": "which build backend to use (string)"
    },
    "install": {
      "lua": {
        "description": "Lua modules"
      },
      "lib": {
        "description": "dynamic libraries"
      },
      "conf": {
        "description": "configuration files"
      },
      "bin": {
        "description": "Lua command-line scripts"
      },
    },
    "copy_directories": {
      "description": "A list of directories in the source directory to be copied\nto the rock installation prefix as-is."
    },
    "patches": {
      "description": "A rockspec can embed patches in unified diff ('diff -u') format,\nwhich are applied prior to building the modules.\nEach entry in this table should contain a descriptive file name for the patch a the key,\nand the text of the patch as the value (typically, as a long string)."
    },
    "modules": {
      "description": "An array in which keys are module names in the format\nnormally used by the require() function."
    }
  }
}
