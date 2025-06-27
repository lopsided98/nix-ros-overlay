
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, geometry-msgs, message-filters, nav-msgs, rclcpp, rcutils, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-node";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_node/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "e29739ad135288a61a848cce0e4e4bce1a37b3a603a598a5c7b0e28fc2f6938f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dynamixel-sdk geometry-msgs message-filters nav-msgs rclcpp rcutils sensor-msgs std-msgs std-srvs tf2 tf2-ros turtlebot3-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TurtleBot3 driver node that include diff drive controller, odometry and tf node";
    license = with lib.licenses; [ asl20 ];
  };
}
