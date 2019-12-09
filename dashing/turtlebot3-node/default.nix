
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, rcutils, turtlebot3-msgs, nav-msgs, std-msgs, std-srvs, ament-cmake, tf2, rclcpp, dynamixel-sdk, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-node";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_node/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "1c0903f21dada488e85be0c4701687141f680ea4e3273448a3591b745dedaf76";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs message-filters geometry-msgs rcutils turtlebot3-msgs nav-msgs std-msgs std-srvs tf2 rclcpp dynamixel-sdk tf2-ros ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs rcutils turtlebot3-msgs nav-msgs std-msgs std-srvs tf2 rclcpp dynamixel-sdk tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TurtleBot3 driver node that include diff drive controller, odometry and tf node'';
    license = with lib.licenses; [ asl20 ];
  };
}
