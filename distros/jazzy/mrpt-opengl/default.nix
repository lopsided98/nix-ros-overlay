
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, libGL, libGLU, mrpt-img, mrpt-poses, mrpt-viz }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-opengl";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_opengl/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "cd55c93282f922a486ce44e09bf7be68f641b17eaab0c40d2f1e70c623dc636d";
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
