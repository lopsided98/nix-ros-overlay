
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, libGL, libGLU, libglvnd, mrpt-img, mrpt-poses, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-opengl";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_opengl/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "2c132bb4bd664bd9dc11bb456874c056756a49d78a0926d4e4b6636254f14506";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ libGL libGLU libglvnd mrpt-img mrpt-poses mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_opengl";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
