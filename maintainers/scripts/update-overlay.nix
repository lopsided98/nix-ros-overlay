{
  curl,
  python3Packages,
  superflore,
  writeShellApplication,
}:
writeShellApplication {
  name = "update-overlay";

  runtimeInputs = [
    curl
    superflore
    python3Packages.rosdep
  ];

  runtimeEnv = {
    ROS_OS_OVERRIDE = "nixos";
    ROSDEP_SOURCE_PATH = "rosdep-sources";
  };

  text = ''
    if [[ $# -eq 0 ]]; then
      echo "No superflore parameters specified, using defaults."
      if [[ ''${GITHUB_ACTION:-} ]]; then
        set -- --dry-run --output-repository-path . --all \
               --tar-archive-dir ~/.ros/tar --upstream-branch develop
      else
        set -- --dry-run --output-repository-path . --all \
               --tar-archive-dir .tar --no-branch
      fi
    fi
    set -x
    mkdir -p "$ROSDEP_SOURCE_PATH"
    curl https://raw.githubusercontent.com/ros/rosdistro/master/rosdep/sources.list.d/20-default.list -o "$ROSDEP_SOURCE_PATH/20-default.list"
    rosdep update
    superflore-gen-nix "$@"
  '';
}
