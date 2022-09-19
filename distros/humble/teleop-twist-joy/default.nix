
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, joy, launch-ros, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-teleop-twist-joy";
  version = "2.4.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/humble/teleop_twist_joy/2.4.3-4.tar.gz";
    name = "2.4.3-4.tar.gz";
    sha256 = "94d0c3b58e74dffb249faea5f797e94128b917d81deec516e02e1f8cf621112c";
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
