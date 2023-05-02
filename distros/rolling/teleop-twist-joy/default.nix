
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, joy, launch-ros, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-teleop-twist-joy";
  version = "2.4.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/rolling/teleop_twist_joy/2.4.3-4.tar.gz";
    name = "2.4.3-4.tar.gz";
    sha256 = "079aa2e8c254bbac59e58a0a2a26c11387abee5e617d080140d04ddbd76bf52c";
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
