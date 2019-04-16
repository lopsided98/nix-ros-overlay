# Top level package set
self:
# Distro package set
rosSelf: rosSuper: {
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

  # If anyone actually needs this package, its your problem to get it to
  # compile.
  astra-camera = null;

  catkin = rosSuper.catkin.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/ros/catkin/commit/98f97ffcffbb7127d4a8aff0fcb26d1578557906.patch;
        sha256 = "1z6yl5yqrbivw1zkibkk5vn5ykrsrfmba80vmcqriiz0fdq2sigk";
      })
      (self.fetchpatch {
        url = https://github.com/ros/catkin/commit/4812667954e4cb7f99a753ffd4d725047e73a73b.patch;
        sha256 = "02i12935w119yyqvwlrd0w3z6xl786wlrkh49wsx6djaljhk3w3a";
      })
    ];
  });

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
  
  realsense-camera = rosSuper.realsense-camera.overrideAttrs ({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ rosSelf.librealsense ];
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
