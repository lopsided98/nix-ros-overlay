# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {

  angles = rosSuper.angles.overrideAttrs({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ rosSelf.python3Packages.distutils ];
  });

  eigenpy = rosSuper.eigenpy.overrideAttrs ({
    cmakeFlags ? [], ...
  }: {
    cmakeFlags = cmakeFlags ++ [ "-DPYTHON_EXECUTABLE=${rosSelf.python.interpreter}" ];
  });

  franka-hw = rosSuper.franka-hw.overrideAttrs ({
    patches ? [], ...
  }: {
    # Fix missing cstdint include
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/frankaemika/franka_ros/pull/381.patch";
      hash = "sha256-zv3mjemVB2s99w8lnYDjpm5uuCJwsj/Hta0f9/MEpRE=";
      stripLen = 1;
    }) ];
  });

  gazebo = self.gazebo_11;

  hdf5-map-io = rosSuper.hdf5-map-io.overrideAttrs ({
    nativeBuildInputs ? [], ...
  } : {
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
  });

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.19.20240304.tar.gz";
    hash = "sha256-GpzGMpQ02s/X/XEcGoozzMjigrbqvAu81bcb7QG+36E=";
  };

  lvr2 = rosSuper.lvr2.overrideAttrs ({
    nativeBuildInputs ? [], buildInputs ? [], postPatch ? "", ...
  } : {
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
    buildInputs = buildInputs ++ (with self; [ libtiff lz4 libGLU ]);

    env.NIX_CFLAGS_COMPILE = "-fpermissive";

    postPatch = with self.lib; postPatch + ''
      substituteInPlace CMakeModules/FindLz4.cmake \
        --replace-fail "set(LZ4_SEARCH_HEADER_PATHS" "set(LZ4_SEARCH_HEADER_PATHS ${getDev self.lz4}/include" \
        --replace-fail "set(LZ4_SEARCH_LIB_PATH" "set(LZ4_SEARCH_LIB_PATH ${getLib self.lz4}/lib"
    '';
  });

  mapviz = rosSuper.mapviz.overrideAttrs ({
    patches ? [], ...
  }: {
    # Fix linking to GLUT with CMake 3.22
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/swri-robotics/mapviz/commit/b3c8e19bc1b7e1d2478c0b13a848d7caf40b4e5e.patch";
      sha256 = "sha256-abjP9Pn3v+aLZBOI0KiGihHgt2WLadDvdaKVyk2IlPY=";
      stripLen = 1;
    }) ];
  });


  mavros-extras = rosSuper.mavros-extras.overrideAttrs ({
    patches ? [], ...
  }: {
    # Fix compile error when compiling with gcc 13
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/mavlink/mavros/commit/640e916127167029e5be3e86c5f43b05baf52e16.patch";
      hash = "sha256-IpCeQeeUKTweCTdsP9m07i+q2fNosFP4Y5SVX+wMeP8=";
      stripLen = 1;
    }) ];
  });

  moveit-core = rosSuper.moveit-core.overrideAttrs ({
    buildInputs ? [], patches ? [], ...
  }: {
    buildInputs = buildInputs ++ [ rosSelf.angles ];
    # Add angles dependency to CMakeLists.txt and packages.xml
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros-planning/moveit/commit/ea73996b7ff9736504ea012dbdea9e81a80a561c.patch";
      hash = "sha256-ZduyFhnl5WH07TEkfF1DwTUBZNd5CbZ3wHN7JHJb1XI=";
      stripLen = 1;
    }) ];
  });

  novatel-oem7-driver = (patchExternalProjectGit rosSuper.novatel-oem7-driver {
    url = "https://github.com/novatel/novatel_edie";
    originalRev = "origin/dev-ros_install_prefix";
    rev = "d02ccc2dfe531d642c1e2ca8a8c0f8205c856f23";
    fetchgitArgs.hash = "sha256-ZQ7z9vQ8quI+SoNhB93tTw5LQe07UAKdbJJpaMj1C6I=";
  }).overrideAttrs ({ ... }: {
    dontFixCmake = true;
  });

  pcl-ros = rosSuper.pcl-ros.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix compatibility with PCL 1.13
      (self.fetchpatch {
        url = "https://github.com/ros-perception/perception_pcl/commit/eb8f009ca519fc6b5651ba3a125fe5ae04f67bb8.patch";
        hash = "sha256-tEp4/1loFpjHKpNYuDz32iSzXJdrXGWmfJuBkO8d95w=";
        stripLen = 1;
      })
    ];
  });

  pybind11-catkin = patchVendorUrl rosSuper.pybind11-catkin {
    url = "https://github.com/pybind/pybind11/archive/v2.10.3.zip";
    sha256 = "sha256-IBlmph3IJvGxh5okozF6HskhSpGMjrA1vi8ww+nPvcs=";
  };

  rosconsole = rosSuper.rosconsole.overrideAttrs ({
    patches ? [], ...
  }: {
    # Support liblog4cxx 0.13
    # https://github.com/ros/rosconsole/pull/58
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros/rosconsole/pull/58.patch";
      hash = "sha256-Rg+WCPak5sxBqdQ/QR9eboyX921PZTjk3/PuH5mz96U=";
    }) ];
  });

  rosfmt = patchVendorUrl rosSuper.rosfmt {
    url = "https://github.com/fmtlib/fmt/releases/download/9.1.0/fmt-9.1.0.zip";
    sha256 = "sha256-zOtMuTZuGKV0ISjLNSTOX1Doi0dvHlRzekf/3030yZY=";
  };

  roslint = rosSuper.roslint.overrideAttrs({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ rosSelf.python3Packages.distutils ];
  });

  rviz-map-plugin = rosSuper.rviz-map-plugin.overrideAttrs ({
    buildInputs ? [], ...
  } : {
    buildInputs = buildInputs ++ [ self.opencl-clhpp ];
  });

  sophus = rosSuper.sophus.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail " -Werror" ""
    '';
  });
}
