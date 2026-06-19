
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-kinematics, mrpt-maps, mrpt-viz }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-nav";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_nav/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "8f55e4a5816ca44ca20a02e151e8c4c4a416f912d7709d4e0b79dcf92fcfe740";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mrpt-kinematics mrpt-maps mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_nav";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
