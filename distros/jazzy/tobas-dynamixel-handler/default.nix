
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, std-srvs, tobas-dynamixel-msgs, tobas-dynamixel-ros-interface, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel-handler";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel_handler/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "a54720cc2bfe87949d30601b35b8b1180cd9f791564293195bf340432d0d7248";
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
