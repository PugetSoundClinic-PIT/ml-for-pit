# list all available commands
default:
  just --list

# clean all build, python, and lint files
clean:
	rm -fr _build

# install dev deps
install:
    pip install -r {{justfile_directory()}}/requirements.txt

# build book
build:
    jupyter-book build {{justfile_directory()}}

# Generate project URI for browser opening
# We replace here to handle windows paths
# Windows paths are normally `\` separated but even in the browser they use `/`
# https://stackoverflow.com/a/61991869
project_uri := if "os_family()" == "unix" {
	justfile_directory()
} else {
	replace(justfile_directory(), "\\", "/")
}

# serve book
serve:
    python -mwebbrowser -t "file://{{project_uri}}/_build/html/index.html"

# build and serve book
build-and-serve:
    just build
    just serve