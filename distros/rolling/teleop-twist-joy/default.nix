
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, joy, launch-ros, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-teleop-twist-joy";
  version = "2.6.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/rolling/teleop_twist_joy/2.6.5-2.tar.gz";
    name = "2.6.5-2.tar.gz";
    sha256 = "b6d30286466aebf6d16f0fa08c0156a77c0e085f5967bcd6a1d8158a7b5ae637";
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
