
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, libGL, libGLU, mrpt-img, mrpt-poses, mrpt-viz }:
buildRosPackage {
  pname = "ros-humble-mrpt-opengl";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_opengl/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "07a1103d485a43e19b2bff72ba0bb4d3bde271abb9ce2b679a98aad1cb73ad59";
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
