
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, rclcpp, rclcpp-action, rcutils, sensor-msgs, std-msgs, std-srvs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-node";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/humble/turtlebot4_node/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "849e89480d67d14b130555939d565fedd8b35b889a5843c3da74187b329abb5e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-msgs rclcpp rclcpp-action rcutils sensor-msgs std-msgs std-srvs turtlebot4-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Node'';
    license = with lib.licenses; [ asl20 ];
  };
}
