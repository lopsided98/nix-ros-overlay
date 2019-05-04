
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-device, catkin, robotis-controller, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-robotis-framework";
  version = "0.2.9";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-Framework-release/archive/release/kinetic/robotis_framework/0.2.9-0.tar.gz;
    sha256 = "06f2dedcbb952add7d87a29faa3eaaf8a13f33a383eb41082d370bc3542a417f";
  };

  propagatedBuildInputs = [ robotis-device robotis-controller robotis-framework-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the robotis_framework (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
