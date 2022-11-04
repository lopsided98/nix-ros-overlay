
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-melodic-hebi-cpp-api";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/HebiRobotics/hebi_cpp_api_ros-release/archive/release/melodic/hebi_cpp_api/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "8bf76ffbba3dc13648069d8d9b293c791dd0c03ccc6ba6ebb51604691e6a2276";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    license = with lib.licenses; [ "HEBI-C-Software-License-https-www.hebirobotics.com-softwarelicense-" ];
  };
}
