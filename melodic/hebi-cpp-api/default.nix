
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-melodic-hebi-cpp-api";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/HebiRobotics/hebi_cpp_api_ros-release/archive/release/melodic/hebi_cpp_api/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "c322cc89c65900c9357d451a53ec0c9d301954de10bca9ff3c85da20d6c5c5db";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    license = with lib.licenses; [ "HEBI C++ Software License (https://www.hebirobotics.com/softwarelicense)" ];
  };
}
