
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rcutils, ros-ign-interfaces, sensor-msgs, std-msgs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-ignition-toolbox";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/galactic/turtlebot4_ignition_toolbox/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "9eaabd5c035e658c8b9e81288d2e4f079d1a7b675391a27963d5a96036a371b6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-action rcutils ros-ign-interfaces sensor-msgs std-msgs turtlebot4-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Ignition Toolbox'';
    license = with lib.licenses; [ asl20 ];
  };
}
