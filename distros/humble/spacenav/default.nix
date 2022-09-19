
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, libspnav, rclcpp, rclcpp-components, sensor-msgs, spacenavd }:
buildRosPackage {
  pname = "ros-humble-spacenav";
  version = "3.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/humble/spacenav/3.1.0-3.tar.gz";
    name = "3.1.0-3.tar.gz";
    sha256 = "11ad278a0731a7fb325c90ee6636dbf95b8317f1aa0719fbcbef1e91a73df73e";
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
