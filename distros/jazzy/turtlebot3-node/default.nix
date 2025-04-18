
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, geometry-msgs, message-filters, nav-msgs, rclcpp, rcutils, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-node";
  version = "2.2.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_node/2.2.8-1.tar.gz";
    name = "2.2.8-1.tar.gz";
    sha256 = "7b1359b1d4e53a40a2cf27cfc33faaed845149234fc501cd2010565dbaea9124";
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
