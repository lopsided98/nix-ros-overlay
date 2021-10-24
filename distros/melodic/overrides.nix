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
        sha256 = "069yj33jj74i6ka98y4m8pwn64dl9bgmiapkmlwvyk5as2w9ndvx";
        revert = true;
      })
      # Fix build with latest QHull
      (self.fetchpatch {
        url = "https://github.com/ros-planning/geometric_shapes/commit/22e5a02a06c36bfc0c49ce5cc636e7ab64d8b0be.patch";
        sha256 = "015min5qdi8vkvbjbcvyrf41ycd2nk2d371x1jb0xpn30r8nhlin";
      })
    ];
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

  pcl-ros = rosSuper.pcl-ros.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix build with PCL >=1.11
      (self.fetchpatch {
        url = "https://github.com/ros-perception/perception_pcl/commit/e812d3cf1b67cc73841b41e690d53c74e5077a05.patch";
        sha256 = "0savdifw90ql34zh6rff53hx3cy6rlmrwqzw80fsihkirls84b3w";
        stripLen = 1;
      })
      (self.fetchpatch {
        url = "https://github.com/ros-perception/perception_pcl/commit/ba0792cdf378f6faf0e12f517c80bd0dd5405d02.patch";
        sha256 = "1b6vdipj6g0kah74fjkq598b0fr7z8857w9iw1hcv5hinwdypryk";
        stripLen = 1;
      })
      # Fix build with PCL >=1.12
      (self.fetchpatch {
        url = "https://github.com/ros-perception/perception_pcl/commit/25a073a3509e068734ba0edf1e991d1c01c04e68.patch";
        sha256 = "0ylh7zcbs16q830bfs91mmzzdx7w1zxjr14n0l34i73swvhfikqi";
        stripLen = 1;
      })
      (self.fetchpatch {
        url = "https://github.com/ros-perception/perception_pcl/commit/1d1e1a05d97cdbf93e67c153f1100fc14c26e31c.patch";
        sha256 = "1pk365g33fpns3h3v0ldjpfv1530ppg1q3pgv4z8z9pi2n4h2rmm";
        stripLen = 1;
      })
      (self.fetchpatch {
        url = "https://github.com/ros-perception/perception_pcl/commit/1887ba26ff71db41655691e5ad4d83c7baaed3b9.patch";
        sha256 = "06snxln3q1ywydcx2fq6vhm8fi3wkl8kc7cz3qxim750h35nmvs4";
        stripLen = 1;
      })
    ];
  });

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

  rosfmt = patchVendorUrl rosSuper.rosfmt {
    url = "https://github.com/fmtlib/fmt/releases/download/6.0.0/fmt-6.0.0.zip";
    sha256 = "0h148anbaqgch6n69pxsvs1c9wmykgd052wmzgdia7qpz8w6p8dl";
  };
}
