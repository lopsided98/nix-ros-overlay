
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, libspnav, libx11, rclcpp, rclcpp-components, sensor-msgs, spacenavd }:
buildRosPackage {
  pname = "ros-lyrical-spacenav";
  version = "3.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/lyrical/spacenav/3.3.0-4.tar.gz";
    name = "3.3.0-4.tar.gz";
    sha256 = "cbb1edf7d6a7d9110db88d7fff7660aab7ff4594a9e458763726c2e6599c45a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs libspnav libx11 rclcpp rclcpp-components sensor-msgs spacenavd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS interface to the 3Dconnexion SpaceNavigator 6DOF joystick.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
