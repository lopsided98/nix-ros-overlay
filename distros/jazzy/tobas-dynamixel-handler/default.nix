
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, std-srvs, tobas-dynamixel-msgs, tobas-dynamixel-ros-interface, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel-handler";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel_handler/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "ce5c3cc6a18eeb223133b14cbce049c7ca47b85f045c9b8adec0244d1e03c2bc";
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
