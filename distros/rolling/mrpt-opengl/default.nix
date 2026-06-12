
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, libGL, libGLU, mrpt-img, mrpt-poses, mrpt-viz }:
buildRosPackage {
  pname = "ros-rolling-mrpt-opengl";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_opengl/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "9ac53c976dac270d72eb9f1495dcaa65349f12c41ae80729fcff7e3705de25fb";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen libGL libGLU ];
  propagatedBuildInputs = [ mrpt-img mrpt-poses mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_opengl";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
