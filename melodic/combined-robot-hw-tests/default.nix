
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, combined-robot-hw, controller-manager, hardware-interface, catkin, controller-manager-tests, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-combined-robot-hw-tests";
  version = "0.15.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/combined_robot_hw_tests/0.15.1-0.tar.gz";
    name = "0.15.1-0.tar.gz";
    sha256 = "df8e558ef4b707ba0691eabdd3dfbc72bfdb050c3e94c87e0cf69675ba2443ff";
  };

  buildType = "catkin";
  buildInputs = [ combined-robot-hw controller-manager hardware-interface controller-manager-tests roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ combined-robot-hw controller-manager hardware-interface controller-manager-tests roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The combined_robot_hw_tests package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
