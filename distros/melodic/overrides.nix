# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  cv-bridge = rosSuper.cv-bridge.overrideAttrs ({
    patches ? [],
    propagatedBuildInputs ? [], ...
  }: {
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros-perception/vision_opencv/commit/fbfb25303bd77db6a5943043cc4303d0c0b835c9.patch";
      sha256 = "0pznlbqp99f6bzql3q1sjy9sqk2746wgp7qdqj790j5z0vb2v2r6";
      stripLen = 1;
    }) ];
    propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.pythonPackages.opencv3 ];
  });

  gazebo = self.gazebo_9;

  geometric-shapes = rosSuper.geometric-shapes.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Revert formatting changes that cause conflict with next patch
      (self.fetchpatch {
        url = "https://github.com/ros-planning/geometric_shapes/commit/12afa837202dcc6c96f96fc499ef25078f997b75.patch";
        hash = "sha256-fTebuNCqTL85rfOqWN9KtBFj+UWVeJTUNJEcKceQPhk=";
        revert = true;
      })
      # Fix build with latest QHull
      (self.fetchpatch {
        url = "https://github.com/ros-planning/geometric_shapes/commit/22e5a02a06c36bfc0c49ce5cc636e7ab64d8b0be.patch";
        hash = "sha256-ZEpo1wKzG4qbG9JgJSfsFmp6u8+pFz8wNi2tm09vaCM=";
        excludes = [ "CMakeLists.txt" ];
      })
    ];
  });

  # These packages fail to build with testing disabled [1]. This has bee
  # fixed upstream [2] but the patch is difficult to apply, so we just enable
  # testing instead.
  #
  # [1] https://github.com/lopsided98/nix-ros-overlay/issues/160
  # [2] https://github.com/husky/husky/pull/202
  husky-control = rosSuper.husky-control.overrideAttrs ({ ... }: {
    doCheck = true;
  });
  husky-description = rosSuper.husky-description.overrideAttrs ({ ... }: {
    doCheck = true;
  });
  husky-navigation = rosSuper.husky-navigation.overrideAttrs ({ ... }: {
    doCheck = true;
  });
  husky-viz = rosSuper.husky-viz.overrideAttrs ({ ... }: {
    doCheck = true;
  });

  image-view = rosSuper.image-view.overrideAttrs ({
    cmakeFlags ? [], ...
  }: {
    # The problem is very similar to this:
    # https://github.com/ros/ros-overlay/issues/607
    cmakeFlags = cmakeFlags ++ [
      "-DGTK2_GLIBCONFIG_INCLUDE_DIR:PATH=${self.glib.out}/lib/glib-2.0/include"
      "-DGTK2_GDKCONFIG_INCLUDE_DIR:PATH=${self.gtk2.out}/lib/gtk-2.0/include"
    ];
  });

  opencv = self.opencv3;

  pybind11-catkin = patchVendorUrl rosSuper.pybind11-catkin {
    url = "https://github.com/pybind/pybind11/archive/v2.4.3.zip";
    sha256 = "0r6kj10g774s94krnxcc0r8swnm5h0r6mxysxwx8gy9n52f1xk7i";
  };

  python-orocos-kdl = rosSuper.python-orocos-kdl.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/orocos/orocos_kinematics_dynamics/commit/d8d087ad0e1c41f3489d1a255ebfa27b5695196b.patch";
      sha256 = "0qyskqxv4a982kidzzyh34xj2iiw791ipbbl29jg4qb4l21xwqlg";
      stripLen = 1;
    }) ];
  });

  roscpp = rosSuper.roscpp.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # Use qualified placeholders as required by Boost 1.73
    postPatch = postPatch + ''
      find . \( -name '*.cpp' -o -name '*.h' \) -exec sed -i \
        -e 's/\(_[[:digit:]]\)/boost::placeholders::\1/g' {} +
    '';
  });

  rosfmt = patchVendorUrl rosSuper.rosfmt {
    url = "https://github.com/fmtlib/fmt/releases/download/6.0.0/fmt-6.0.0.zip";
    sha256 = "0h148anbaqgch6n69pxsvs1c9wmykgd052wmzgdia7qpz8w6p8dl";
  };

  # Spends an hour trying to download npm packages before failing.
  vapor-master = rosSuper.vapor-master.overrideAttrs ({
    meta ? {}, ...
  }: {
    meta = meta // {
      broken = true;
    };
  });
}
