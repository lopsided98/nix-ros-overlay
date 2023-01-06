
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, libspnav, rclcpp, rclcpp-components, sensor-msgs, spacenavd }:
buildRosPackage {
  pname = "ros-rolling-spacenav";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/rolling/spacenav/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "8fbf483adfd65b1074de189ae71c1be33e6d6ad81e578e166f96deca4dbb7b64";
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
