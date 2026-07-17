
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, libGL, libGLU, mrpt-img, mrpt-poses, mrpt-viz }:
buildRosPackage {
  pname = "ros-humble-mrpt-opengl";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_opengl/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "c32a245d168609d9bc0ea265cc5a737d7c27285343d265d9b561194a7ae12371";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ libGL libGLU mrpt-img mrpt-poses mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_opengl";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
