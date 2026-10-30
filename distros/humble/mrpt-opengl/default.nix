
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, libGL, libGLU, libglvnd, mrpt-img, mrpt-poses, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-opengl";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_opengl/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "061a309286451ea1f747fa1a22610c83b2e57a0da143d24a12baac3840653c9f";
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
