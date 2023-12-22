
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-analog-outputs";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_analog_outputs/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "ac0ea869b95f7ca35a3b86c5ba58d6b74b7ea7146272b1dd7f7cf0451b68a8eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ phidgets-api phidgets-msgs rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Analog Output devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
