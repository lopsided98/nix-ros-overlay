
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rcutils, ros-ign-interfaces, sensor-msgs, std-msgs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-ignition-toolbox";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/humble/turtlebot4_ignition_toolbox/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "930521bde26de2dbdd1373c30a7ddcb3d26689992d024d2abf95f4de3ab64927";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-action rcutils ros-ign-interfaces sensor-msgs std-msgs turtlebot4-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Ignition Toolbox'';
    license = with lib.licenses; [ asl20 ];
  };
}
