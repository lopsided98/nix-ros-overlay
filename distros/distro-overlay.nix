{ version, distro }:
self: super:
let
  pythonOverridesFor = with self.lib; prevPython: prevPython // {
    pkgs = prevPython.pkgs.overrideScope (pyFinal: pyPrev: {
      wxPython = pyFinal.wxPython_4_2;

      # ROS is not compatible with empy 4
      empy = pyFinal.empy_3;
    });
  };

  base = rosSelf: rosSuper: {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit self rosSelf; };

    callPackage = self.newScope rosSelf;

    buildRosPackage = rosSelf.callPackage ./build-ros-package {
      rosVersion = version;
      rosDistro = distro;
    };

    buildEnv = rosSelf.callPackage ./build-env {
      inherit (self) buildEnv;
    };

    python3 = pythonOverridesFor rosSelf.rosPython or self.python3;
    python3Packages = rosSelf.python3.pkgs;

    boost = self.boost.override {
      python = rosSelf.python;
      enablePython = true;
    };
  };

  mrptOverrides = rosSelf: rosSuper:
    let
      patchMrptExternalProjectGit = pkg:
        let
          inherit (rosSuper.lib) head splitString patchExternalProjectGit;
          # CMakeLists.txt sets MRPT_VERSION_TO_DOWNLOAD to the
          # version from package.xml. Let's use version from Nix, which should be the same.
          rev = head (splitString "-" pkg.version); # Ignore ROS release such as "-r1".
        in
        (patchExternalProjectGit pkg {
          url = "https://github.com/MRPT/mrpt.git";
          originalRev = "\${MRPT_VERSION_TO_DOWNLOAD}";
          inherit rev;
          fetchgitArgs.hash = {
            "2.15.11" = "sha256-4WdblshWYBdPgmCDr2VYPiudeVbn2Yk4ZTXXB8VgD4U=";
          }.${rev};
        }).overrideAttrs ({ postPatch ? "", buildInputs ? [], ... }: {
          postPatch = postPatch + ''
            src=$(awk '/^URL/ { print gensub(/"/, "", "g", $2) }' CMakeLists.txt)
            read -r version < $src/version_prefix.txt
            if [[ $version != "${rev}" ]]; then
              echo "MRPT version mismatch: $version != "${rev}". Is fetchgitArgs.hash in patchMrptExternalProjectGit up to date?"
              exit 1
            fi
          '';
          buildInputs = buildInputs ++ [
            # Work around problems reported in
            # https://github.com/MRPT/mrpt/pull/1338 and
            # https://github.com/MRPT/mrpt_ros/pull/5
            rosSelf.octomap or self.octomap
            # If libfyaml is not found, cmake tries to download it, which fails
            self.libfyaml
          ];
        });
    in rosSuper.lib.genAttrs [
      "mrpt-apps"
      "mrpt-libapps"
      "mrpt-libbase"
      "mrpt-libgui"
      "mrpt-libhwdrivers"
      "mrpt-libmaps"
      "mrpt-libmath"
      "mrpt-libnav"
      "mrpt-libobs"
      "mrpt-libopengl"
      "mrpt-libposes"
      "mrpt-libslam"
      "mrpt-libtclap"
    ] (name: patchMrptExternalProjectGit rosSuper.${name});

  overrides = rosSelf: rosSuper: with rosSelf.lib; {
    # ROS package overrides/fixups

    # Some third-party packages are available in rodistro,
    # but have a better packaging in nixpkgs, so use it instead
    inherit (self.python3Packages) coal eigenpy pinocchio crocoddyl ;

    freeimage = null; # Get rid of freeimage

    gazebo-ros = rosSuper.gazebo-ros.overrideAttrs ({ ... }:{
      setupHook = ./gazebo-ros-setup-hook.sh;
    });

    gtsam = rosSuper.gtsam.overrideAttrs ({
      cmakeFlags ? [], ...
    }: {
      # Don't use vendored version of Eigen, which can collide with
      # Eigen version in dependent packages.
      cmakeFlags = cmakeFlags ++ [ "-DGTSAM_USE_SYSTEM_EIGEN=ON" ];
    });

    # hpp-fcl was renamed to coal and we use the version from nixpkgs (see above)
    hpp-fcl = rosSelf.coal;

    joint-state-publisher-gui = rosSuper.joint-state-publisher-gui.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/joint_state_publisher_gui/joint_state_publisher_gui"
      '';
    });

    librealsense2 = rosSuper.librealsense2.overrideAttrs ({
      buildInputs ? [], ...
    }: {
      buildInputs = buildInputs ++ [ self.glfw self.libGLU ];
    });

    mavlink = rosSuper.mavlink.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        substituteInPlace CMakeLists.txt --replace-fail /usr/bin/env '${self.buildPackages.coreutils}/bin/env'
        patchShebangs pymavlink/tools/mavgen.py
      '';
      ROS_PYTHON_VERSION = if rosSelf.python.isPy3k then 3 else 2;
    });

    osqp-vendor = pipe rosSuper.osqp-vendor [
      (pkg: pkg.overrideAttrs ({
        preInstall ? "", ...
      }: {
        # osqp installs into both lib/cmake/ and lib64/cmake/ which is
        # problematic because moveLib64 doesn't attempt to merge overlapping
        # directories but fails instead. Here we do the merge manually.
        preInstall = preInstall + ''
          mkdir -p ./osqp_install/lib/cmake/osqp
          mv ./osqp_install/lib64/cmake/osqp/* ./osqp_install/lib/cmake/osqp
          rm -r ./osqp_install/lib64/cmake
        '';
      }))

      (pkg: patchExternalProjectGit pkg {
        url = "https://github.com/osqp/osqp.git";
        rev = "v0.6.2";
        revVariable = "git_tag";
        fetchgitArgs.hash = "sha256-RYk3zuZrJXPcF27eMhdoZAio4DZ+I+nFaUEg1g/aLNk=";
      })
    ];

    plotjuggler = rosSuper.plotjuggler.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = ''
        wrapQtApp "$out/lib/plotjuggler/plotjuggler"
      '';
    });

    # TODO: Remove once onetbb appears in the locked nixpkgs version.
    onetbb = self.tbb_2022;

    rtabmap-viz = rosSuper.rtabmap-viz.overrideAttrs ({
      postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rtabmap_viz/rtabmap_viz"
      '';
    });

    # We map ROS packages that depend on Ubuntu's libexpected-dev to
    # depend on tl-expected-nixpkgs. We cannot use the name
    # tl-expected because it is shadowed by tl-expected package from
    # rosdistro.
    tl-expected-nixpkgs = self.tl-expected;

  } // (mrptOverrides rosSelf rosSuper)
  // self.lib.optionalAttrs (rosSuper ? gz-ogre-next-vendor) {
    gz-ogre-next-vendor = (rosSelf.lib.patchAmentVendorGit rosSuper.gz-ogre-next-vendor {
      # https://github.com/OGRECave/ogre-next/pull/562
      patchesFor.gz_ogre_next_vendor = [
        (self.fetchpatch2 {
          # Add simple implementation for STBIImageCodec::magicNumberToFileExt()
          url = "https://github.com/OGRECave/ogre-next/commit/98c9095c6e288fceb59ccb3504d9127d88eb1b51.patch";
          hash = "sha256-n4TVB7j0CgUGm4NWGS2WoKeOqzon8VLOPjnDX3DMcZM=";
        })
        (self.fetchpatch2 {
          # Fix loading of images in STBICodec
          url = "https://github.com/OGRECave/ogre-next/commit/37d4876eb71c70b9eb3464e5b72c6e6d6be03232.patch";
          hash = "sha256-U84MU2ORhEThJ/rqfSkOhyAEgDEHJiaVuWIyeKLpwZw=";
        })
        (self.fetchpatch2 {
          # Handle row padding correctly for 1, 2 and 4-channel images in STBICodec
          url = "https://github.com/OGRECave/ogre-next/commit/96a3bb016b2c9b4f9cca9df1a65d619220e21d78.patch";
          hash = "sha256-gJjlpkp3qhthF+6TbGLuToGPvOngqZrgE5sBucbvL4g=";
        })
      ];
    }).overrideAttrs(({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt \
        --replace-fail 'CMAKE_ARGS' 'CMAKE_ARGS -DOGRE_CONFIG_ENABLE_STBI:BOOL=ON'
    '';
      dontFixCmake = true;
    }));
  };

  otherSplices = {
    selfBuildBuild = self.pkgsBuildBuild.rosPackages.${distro};
    selfBuildHost = self.pkgsBuildHost.rosPackages.${distro};
    selfBuildTarget = self.pkgsBuildTarget.rosPackages.${distro};
    selfHostHost = self.pkgsHostHost.rosPackages.${distro};
    selfTargetTarget = self.pkgsTargetTarget.rosPackages.${distro} or {};
  };

  keep = rosSelf: {
    inherit (rosSelf) lib buildRosPackage;
  };
in self.lib.makeScopeWithSplicing
  self.splicePackages
  self.newScope
  otherSplices
  keep
  (_: {})
  (rosSelf: self.lib.composeManyExtensions ([
    base
    (import (./. + "/${distro}/generated.nix"))
    overrides
  ]
  ++ self.lib.optional (version == 2) (import ./ros2-overlay.nix self)
  ++ self.lib.optional (builtins.elem distro ["humble" "jazzy" "kilted"]) (import ./qt5-overlay.nix self)
  ++ [
    (import (./. + "/${distro}/overrides.nix") self)
  ]) rosSelf {})
