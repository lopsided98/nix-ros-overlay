
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-kinematics, mrpt-maps, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-nav";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_nav/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "dfcda330eb4a14a2eb7e6ff7f32fd5d5531f4abdbf059eec7a0c65acf25aa356";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-kinematics mrpt-maps mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_nav";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
