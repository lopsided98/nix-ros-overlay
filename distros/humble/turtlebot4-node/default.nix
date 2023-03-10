
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, rclcpp, rclcpp-action, rcutils, sensor-msgs, std-msgs, std-srvs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-node";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/humble/turtlebot4_node/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "10a1be0053bb603a6dd710a87b67857880ac029f8b0844847af2ea6468b4b07e";
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
