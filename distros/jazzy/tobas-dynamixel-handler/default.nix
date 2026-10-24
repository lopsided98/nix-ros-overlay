
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, std-srvs, tobas-dynamixel-msgs, tobas-dynamixel-ros-interface, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel-handler";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel_handler/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "7558e9078054cea7f439f7f33df85f3b7cf33673b1de6ee8f794ca0ed48321e6";
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
