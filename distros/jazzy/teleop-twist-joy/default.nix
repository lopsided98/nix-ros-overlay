
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, joy, launch-ros, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-teleop-twist-joy";
  version = "2.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/jazzy/teleop_twist_joy/2.6.0-3.tar.gz";
    name = "2.6.0-3.tar.gz";
    sha256 = "085c851b7085d4a19e52f6ab3de2a6e5bf986bf7c963c6b1b9c2b2fa1a881da2";
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
