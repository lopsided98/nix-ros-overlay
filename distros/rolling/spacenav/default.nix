
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, libspnav, libx11, rclcpp, rclcpp-components, sensor-msgs, spacenavd }:
buildRosPackage {
  pname = "ros-rolling-spacenav";
  version = "3.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/rolling/spacenav/3.3.0-3.tar.gz";
    name = "3.3.0-3.tar.gz";
    sha256 = "538eef262ce501c73e6db097aac425531b3995719c3ec9c1ae8e9de965fedda1";
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
