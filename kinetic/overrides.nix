# Top level package set
self:
# Distro package set
rosSelf: rosSuper: {
  gazeboSimulator = self.gazeboSimulator // {
    gazebo = self.gazeboSimulator.gazebo7;
  };
  
  astra-camera = rosSuper.astra-camera.overrideDerivation ({
    cmakeFlags ? [],
    preConfigure ? "", ...
  }: let 
    astraOpenNI2 = self.fetchFromGitHub {
      owner = "orbbec";
      repo = "OpenNI2";
      rev = "orbbec_ros";
      sha256 = "1yxgb6vf0kic45jgxvh5bbcrcl7bnjq0fxa5cgvg45is1313d530";
    };
  in {
    cmakeFlags = cmakeFlags ++ [ "-DUPDATE_DISCONNECTED=1" ];
    preConfigure = preConfigure + ''
      mkdir -p build/.third-party
      ln -s ${astraOpenNI2} build/.third-party/astra_openni2
    '';
  });

  catkin = rosSuper.catkin.overrideDerivation ({
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

  ecl-containers = rosSuper.ecl-containers.overrideDerivation ({
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

  libfreenect = rosSuper.libfreenect.overrideDerivation ({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ self.libGL self.libGL.dev self.libGLU self.libGLU.dev ];
  });

  rospack = rosSuper.rospack.overrideDerivation ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/ros/rospack/commit/6fcee1b0d2b1c225c39a5820981166b99f0d8750.patch;
        sha256 = "0y8196p6rf4pacdz5fbk5q2xx5pkbi4vgzxnn833fpzqyqqfn56b";
      })
    ];
  });
  
  realsense-camera = rosSuper.realsense-camera.overrideDerivation ({
    buildInputs ? [],
  }: {
    buildInputs = buildInputs ++ [ rosSelf.librealsense ];
  });

  stage = rosSuper.stage.overrideDerivation ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/rtv/Stage/commit/c223a1af47e3dc1d66cc281e894c351e26d63328.patch;
        sha256 = "0a5q2wga64l3h57az6g50zr073z27hm5ddvfd19ks12pzrkpcm4a";
      })
    ];
  });
  
  tf2 = rosSuper.tf2.overrideDerivation ({
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
