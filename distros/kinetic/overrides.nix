# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  actionlib = rosSuper.actionlib.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/ros/actionlib/commit/677e952fcbfe49e6e4c5b835357f88740f49c6ff.patch;
        sha256 = "0825w6r5kzz9y7syrrn6q1v0fjrd8qhn11rq2n4kc064702r8jf7";
      })
    ];
  });

  # If anyone actually needs this package, it's your problem to get it to
  # compile.
  astra-camera = null;

  ecl-containers = rosSuper.ecl-containers.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/stonier/ecl_core/commit/a87d76e070926ac63df3a857c37e5070c49b57d1.patch;
        stripLen = 1;
        sha256 = "1dwj0h8wf3hv0f5nv106ra7br9vvqf8chmqys4lg93hby05cw9n5";
      })
    ];
  });

  gazebo-plugins = rosSuper.gazebo-plugins.overrideAttrs ({
    patches ? [], ...
  }:{
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros-simulation/gazebo_ros_pkgs/commit/b756d784d4bdc45bf33b28ac6c0a01c15563e36c.patch";
        sha256 = "08lpkcda9yr3vjc2wxy5hzm99g7876d6402snac3mx5j7fa3w5i2";
        stripLen = 1;
      })
    ];
  });

  gazeboSimulator = self.gazeboSimulator // {
    gazebo = self.gazeboSimulator.gazebo7;
  };

  joint-trajectory-generator = rosSuper.joint-trajectory-generator.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/PR2/pr2_common_actions/commit/25685db776a43d173ca1410a87f818cfefea8e11.patch;
        stripLen = 1;
        sha256 = "02bccrz306h54jjja5s871avq2rl740jk3f4zyk1hvcnb7pq1jn8";
      })
    ];
  });

  libfreenect = rosSuper.libfreenect.overrideAttrs ({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ self.libGL self.libGLU ];
  });

  librealsense = rosSuper.librealsense.overrideAttrs ({
    patches ? [],
    cmakeFlags ? [], ...
  }: {
    patches = patches ++ [ ./librealsense/gcc7.patch ];
    cmakeFlags = cmakeFlags ++ [ "-DROS_BUILD_TYPE=1" ];
  });

  msp = rosSuper.msp.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/christianrauch/msp/commit/e0136692e0ecbaf8faf340fa3e58eae1e196e3e7.patch;
        sha256 = "1imkrrznw9v18yk47hm2d4c66fbl300niy2433nqbf9mw54064m7";
      })
    ];
  });

  naoqi-libqi = rosSuper.naoqi-libqi.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/aldebaran/libqi/commit/9cb62b463bc9277d6083a50fdd0cef47172f944d.patch;
        sha256 = "01z156yqrvd1vqsjidfzhnpgpxlb78svhpllszhji66s6hckr7cq";
      })
    ];
  });

  # ROS lunar and older provide their own OpenCV 3 package, because older
  # Ubuntu versions did not have one. We don't need to use this.
  inherit (self) opencv3;

  python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/ros-visualization/python_qt_binding/commit/0a4893791039d5c3f851ee7bc2de832209d52f6d.patch;
        sha256 = "0f1iqh7s0wnb2268lwc7r1pgmvalnjjyxy2v71iplw5wdib6bk6y";
      })
    ];
  });

  realsense-camera = rosSuper.realsense-camera.overrideAttrs ({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ rosSelf.librealsense ];
  });

  rospack = rosSuper.rospack.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/ros/rospack/commit/6fcee1b0d2b1c225c39a5820981166b99f0d8750.patch;
        sha256 = "0y8196p6rf4pacdz5fbk5q2xx5pkbi4vgzxnn833fpzqyqqfn56b";
      })
    ];
  });

  rviz = rosSuper.rviz.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros-visualization/rviz/commit/f230eabd2953ede985146f45f707c6563a3387cc.patch";
        sha256 = "0fh6k5wj74wy1fxz0knkmm6iay2ld42dj0lmj8z2ma5g6ibyn7s5";
      })
    ];
  });

  stage = rosSuper.stage.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/rtv/Stage/commit/c223a1af47e3dc1d66cc281e894c351e26d63328.patch;
        sha256 = "0a5q2wga64l3h57az6g50zr073z27hm5ddvfd19ks12pzrkpcm4a";
      })
    ];
  });

  tf2 = rosSuper.tf2.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/ros/geometry2/commit/0173a538f89c66e2783dc67ee3609660625e16b4.patch;
        stripLen = 1;
        sha256 = "0v1kxi4g1s3f8wf2q0yrb3y9mf5i0sjphnq0d2hxpspr21s1wki6";
      })
    ];
  });
}
