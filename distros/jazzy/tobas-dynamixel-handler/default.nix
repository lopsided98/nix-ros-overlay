
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, std-srvs, tobas-dynamixel-msgs, tobas-dynamixel-ros-interface, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel-handler";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel_handler/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "57e03a9d4ac66327894ad3fc3a5313b97f33fd93a458525f178e3d96b29013e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dynamixel-sdk std-srvs tobas-dynamixel-msgs tobas-dynamixel-ros-interface tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 nodes for commanding, monitoring, and bridging Dynamixel motors.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
