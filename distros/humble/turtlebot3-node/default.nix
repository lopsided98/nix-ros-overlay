
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, geometry-msgs, message-filters, nav-msgs, rclcpp, rcutils, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-node";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_node/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "e26539ea914589d8b4a47b49c943620f14ef89a75c8da34c057c25711f52e01e";
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
