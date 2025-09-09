
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, libspnav, rclcpp, rclcpp-components, sensor-msgs, spacenavd }:
buildRosPackage {
  pname = "ros-kilted-spacenav";
  version = "3.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/kilted/spacenav/3.3.0-3.tar.gz";
    name = "3.3.0-3.tar.gz";
    sha256 = "701a1a196994780e800f77e7f6a3a6628ae04aaf4cfb9ec055dfac32c408ba84";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs libspnav rclcpp rclcpp-components sensor-msgs spacenavd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS interface to the 3Dconnexion SpaceNavigator 6DOF joystick.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
