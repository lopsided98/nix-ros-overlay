{
  python3,
  python3Packages,
  rosdistro,
  stdenv,
  superflore,
  writeShellApplication,
  yq-go,
}:
let
  rosdistro-offline = stdenv.mkDerivation {
    pname = "rosdistro";
    version = rosdistro.lastModifiedDate;
    src = rosdistro;
    postPatch = ''
      substituteInPlace rosdep/sources.list.d/20-default.list \
        --replace-fail https://raw.githubusercontent.com/ros/rosdistro/master/ file://${placeholder "out"}/
    '';
    postInstall = ''
      mkdir -p $out
      cp -r * $out
    '';
  };
  rosdep-unwrapped = python3Packages.rosdep.overrideAttrs ({ postPatch ? "", ...}: {
    postPatch = postPatch + ''
      substituteInPlace src/rosdep2/rep3.py \
        --replace-fail https://raw.githubusercontent.com/ros/rosdistro/master/ file://${rosdistro}/
    '';
  });
  rosdep-cache = stdenv.mkDerivation {
    pname = "rosdep-cache";
    version = rosdistro.lastModifiedDate;
    nativeBuildInputs = [
      rosdep-unwrapped
    ];
    ROSDEP_SOURCE_PATH = "${rosdistro-offline}/rosdep/sources.list.d";
    ROSDISTRO_INDEX_URL = "file://${rosdistro-offline}/index-v4.yaml";
    ROS_HOME = placeholder "out";
    buildCommand = ''
      mkdir -p $out
      rosdep update
    '';
  };
in
writeShellApplication {
  name = "update-overlay";

  runtimeInputs = [
    superflore
    yq-go
    (python3.withPackages (p: [ p.rosdistro ]))
  ];

  runtimeEnv = {
    ROS_HOME = rosdep-cache;
    ROSDISTRO_INDEX_URL = "file://${rosdistro-offline}/index-v4.yaml";
    ROS_OS_OVERRIDE = "nixos";
    ROSDEP_SOURCE_PATH = "${rosdistro-offline}/rosdep/sources.list.d";
  };

  text = ''
    ################################################################
    # Build rosdistro cache corresponding to locked rosdistro commit

    # This requires network access to fetch package.xml files so we
    # perform it here instead of in a separate derivation like
    # rosdep-cache.
    mapfile -t DISTROS < <(python -c "
    import rosdistro
    index = rosdistro.get_index(rosdistro.get_index_url())
    def should_generate(distro):
      return index.distributions[distro]['distribution_status'] in ['active', 'pre-release', 'rolling']
    print('\n'.join([distro for distro in index.distributions.keys() if should_generate(distro)]))
    ")
    cache_dir=''${XDG_CACHE_HOME:-~/.cache}/rosdistro-cache/${rosdistro.rev}
    if [[ ! -d "$cache_dir" ]]; then
      mkdir -p "$(dirname "$cache_dir")"
      cache_tmp=$(mktemp --directory "''${cache_dir}.XXXXXX")
      (
        cd "$cache_tmp"
        rosdistro_build_cache "$ROSDISTRO_INDEX_URL" "''${DISTROS[@]}"
        cp ${rosdistro-offline}/index-v4.yaml .
        chmod +w index-v4.yaml
        for distro in "''${DISTROS[@]}"; do
          yq -i ".distributions.$distro.distribution_cache = \"$distro-cache.yaml\"" index-v4.yaml
        done
      )
      mv "$cache_tmp" "$cache_dir"
    fi
    echo "Using rosdistro cache in $cache_dir"
    ROSDISTRO_INDEX_URL="file://$cache_dir/index-v4.yaml"

    ################################################################
    # Run Superflore
    mkdir -p ~/.ros/tar
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
    superflore-gen-nix "$@"
  '';
}
