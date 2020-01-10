
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-melodic-hebi-cpp-api";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/HebiRobotics/hebi_cpp_api_ros-release/archive/release/melodic/hebi_cpp_api/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "f88c51964ab97c6dc486e8b57e3050b6573de43aad68806a28dedea5f93227ac";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    license = with lib.licenses; [ "HEBI C++ Software License (https://www.hebirobotics.com/softwarelicense)" ];
  };
}
