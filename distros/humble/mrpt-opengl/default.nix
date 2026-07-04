
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, libGL, libGLU, mrpt-img, mrpt-poses, mrpt-viz }:
buildRosPackage {
  pname = "ros-humble-mrpt-opengl";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_opengl/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "bf2ea6c55ac650b9f8b4a880efb404ecc09a5a5196199bb08585df9c352e8089";
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
