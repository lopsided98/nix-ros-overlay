
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-melodic-hebi-cpp-api";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/HebiRobotics/hebi_cpp_api_ros-release/archive/release/melodic/hebi_cpp_api/2.0.2-0.tar.gz;
    sha256 = "790c608f30c4ce58df8fc5155a399b01ef523d4f2b81cede90858799d4f3ee0b";
  };

  nativeBuildInputs = [ catkin cmake-modules eigen ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    #license = lib.licenses.HEBI C++ Software License (https://www.hebirobotics.com/softwarelicense);
  };
}
