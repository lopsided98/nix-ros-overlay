
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, libspnav, rclcpp, rclcpp-components, sensor-msgs, spacenavd }:
buildRosPackage {
  pname = "ros-rolling-spacenav";
  version = "3.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/rolling/spacenav/3.3.0-2.tar.gz";
    name = "3.3.0-2.tar.gz";
    sha256 = "388af37930a0bb71ec90cd84cedac3eaad7c512499808afa75f72c1cd341a277";
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
