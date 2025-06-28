
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, joy, launch-ros, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-teleop-twist-joy";
  version = "2.6.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/kilted/teleop_twist_joy/2.6.3-2.tar.gz";
    name = "2.6.3-2.tar.gz";
    sha256 = "e4523584c25f6ab4a8f8f626d89a46a5310654e0a00628d483d357df263bffca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ geometry-msgs joy rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generic joystick teleop for twist robots.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
