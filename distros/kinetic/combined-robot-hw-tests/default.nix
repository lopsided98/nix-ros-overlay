
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-manager, controller-manager-tests, hardware-interface, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-combined-robot-hw-tests";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/combined_robot_hw_tests/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "28215de86afa095dd2ec4e1535c594664b63e3d8b3d131b42b6b0e5906314ed2";
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
