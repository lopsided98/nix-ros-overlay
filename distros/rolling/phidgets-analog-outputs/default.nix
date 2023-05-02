
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-analog-outputs";
  version = "2.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_analog_outputs/2.3.1-2.tar.gz";
    name = "2.3.1-2.tar.gz";
    sha256 = "e504c915ad3e9fdb0698b191c0f02a9298c15d01052cdb72fa57bbc412fed8c5";
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
