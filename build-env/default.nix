{ stdenv, runCommand, makeWrapper, catkin }:
{ packages ? []
, extraOutputsToInstall ? []
, postBuild ? ""
, ignoreCollisions ? false
# Wrap executables with the given argument.
, makeWrapperArgs ? [] }:

let
  env = runCommand "ros-env" {
    inherit packages;
  
    nativeBuildInputs = [ makeWrapper ];
    
    passthru.env = stdenv.mkDerivation {
      name = "interactive-ros-env";
      nativeBuildInputs = [ env ];
      buildInputs = [ catkin ];

      buildCommand = ''
        echo >&2 ""
        echo >&2 "*** ROS 'env' attributes are intended for interactive nix-shell sessions, not for building! ***"
        echo >&2 ""
        exit 1
      '';
    };
  } ''
    declare -A symlinks
    declare -A pkgsAdded
  
    isCatkinPackage() {
      local pkg="$1"
      [ -d "$pkg/share" ] && \
      [ -n "$(find "$pkg/share" \
        -maxdepth 2 -mindepth 2 \
        -name package.xml -print -quit)" ]
    }
    
    isPythonPackage() {
      [ -d "$1/${python.sitePackages}" ]
    }

    addPackageCommon() {
      local pkg="$1"
      shift

      if [ -n "''${pkgsAdded[$pkg]}" ]; then return; fi
      pkgsAdded[$pkg]=1

      cd "$pkg"

      local target
      while IFS= read -r -d $'\0' file; do
        target=$(realpath "$file")
        symlinks[$file]="$pkg/$file"
      done < <(find . \
        -path ./nix-support -prune -o \
        "$@" -type f -print0)
      
      local prop="$pkg/nix-support/propagated-build-inputs"
      if [ -e "$prop" ]; then
          local new_pkg
          for new_pkg in $(<"$prop"); do
              addPackage $new_pkg
          done
      fi
    }

    addCatkinPackage() {
      addPackageCommon "$1"
    }

    addPythonPackage() {
      addPackageCommon "$1"
    }

    addPackage() {
      local pkg="$1"
      
      if isCatkinPackage "$pkg"; then
        addCatkinPackage "$pkg"
      elif isPythonPackage "$pkg"; then
        addPythonPackage "$pkg"
      fi
    }

    for p in ''${packages[@]}; do
      addPackage "$p"
    done

    for link in "''${!symlinks[@]}"; do
      mkdir -p "$(dirname "$out/$link")"
      ln -s "''${symlinks[$link]}" "$out/$link"
    done

    ${postBuild}
  '';
in env
