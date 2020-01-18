
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-manager, controller-manager-tests, hardware-interface, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-combined-robot-hw-tests";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/combined_robot_hw_tests/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "062bc3b2a7136efa85a876a91e4d6136d84ee05a97eba7f52e5c0f728227852a";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ combined-robot-hw controller-manager controller-manager-tests hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The combined_robot_hw_tests package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
