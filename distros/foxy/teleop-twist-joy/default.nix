
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, joy, launch-ros, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-teleop-twist-joy";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/foxy/teleop_twist_joy/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "a1bf57da8fba2b7e13a3754304458ae2153004918e8cb3951119c2ef265ea94d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ geometry-msgs joy rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic joystick teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
