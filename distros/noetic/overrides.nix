# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  eigenpy = rosSuper.eigenpy.overrideAttrs ({
    cmakeFlags ? [], ...
  }: {
    cmakeFlags = cmakeFlags ++ [ "-DPYTHON_EXECUTABLE=${rosSelf.python.interpreter}" ];
  });

  gazebo = self.gazebo_11;

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.13.20230224.tar.gz";
    sha256 = "sha256-HQeVEQUX6xjIBkcoh8r8hh3QtqHBBFJGxVW8R/a9d+M=";
  };

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

  canopen-master = rosSuper.canopen-master.overrideAttrs ({
    patches ? [],...
  }: {
    # fix: error: 'set' in namespace 'std' does not name a template type
    # https://github.com/ros-industrial/ros_canopen/pull/480
    patches = patches ++ [ (self.fetchpatch {
      url = "https://gist.githubusercontent.com/muellerbernd/0e1a7da0e054ac7cc957f1e2026de418/raw/b6788be851b08a2c2f58189f96381ee77181a598/canopen-master-include-set.patch";
      hash = "sha256-xjkMzavqCLQaGsKpF32mp0thxDgovnHJFLB7B0j1et0=";
    }) ];
  });

  libg2o = rosSuper.libg2o.overrideAttrs ({
    propagatedBuildInputs ? [],...
  }: {
    propagatedBuildInputs = propagatedBuildInputs ++ [ self.openblas ];
  });
}
