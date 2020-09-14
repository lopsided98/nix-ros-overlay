
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, chiconybot-msgs, dynamixel-sdk, geometry-msgs, message-filters, nav-msgs, rclcpp, rcutils, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-chiconybot-node";
  version = "0.0.0-r2";

  src = fetchurl {
    url = "https://github.com/jediofgever/ROS_CB-release/archive/release/foxy/chiconybot_node/0.0.0-2.tar.gz";
    name = "0.0.0-2.tar.gz";
    sha256 = "6f6db55a0a4f049100c69142cc66c1ac6542c62ec1e4851112a166254d878a0f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ chiconybot-msgs dynamixel-sdk geometry-msgs message-filters nav-msgs rclcpp rcutils sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''chiconybot driver node that include diff drive controller, odometry and tf node'';
    license = with lib.licenses; [ asl20 ];
  };
}
