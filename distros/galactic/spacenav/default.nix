
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, libspnav, rclcpp, rclcpp-components, sensor-msgs, spacenavd }:
buildRosPackage {
  pname = "ros-galactic-spacenav";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/galactic/spacenav/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "349fa335de0b3b900d58255a62f6613a3cf8767e681127078246fdda57dedd82";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs libspnav rclcpp rclcpp-components sensor-msgs spacenavd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS interface to the 3Dconnexion SpaceNavigator 6DOF joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
