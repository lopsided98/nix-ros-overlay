
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, joy, sensor-msgs, geometry-msgs, rclcpp-components, launch-ros, ament-lint-common, ament-cmake, launch-testing-ament-cmake, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-teleop-twist-joy";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/eloquent/teleop_twist_joy/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "d0572a251836df6d5cf30b24095d3f711c88dc61e1e21a945bd746aeff96ae81";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp geometry-msgs rclcpp-components ];
  checkInputs = [ launch-testing-ros launch-ros ament-lint-common launch-testing-ament-cmake ament-lint-auto ];
  propagatedBuildInputs = [ joy sensor-msgs geometry-msgs rclcpp-components rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic joystick teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
