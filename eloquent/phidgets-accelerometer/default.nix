
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-accelerometer";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_accelerometer/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "d0c2e55b13fe23735c74262ff82a55c2d432d3cd32c25468447fd331d052f07a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Accelerometer devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
