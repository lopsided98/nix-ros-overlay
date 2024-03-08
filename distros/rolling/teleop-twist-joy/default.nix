
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, joy, launch-ros, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-teleop-twist-joy";
  version = "2.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/rolling/teleop_twist_joy/2.6.0-2.tar.gz";
    name = "2.6.0-2.tar.gz";
    sha256 = "106d103a4d99d91bb6a3a20aef99da2e290879a1f9303035f95c7142447b4179";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ geometry-msgs joy rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic joystick teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
