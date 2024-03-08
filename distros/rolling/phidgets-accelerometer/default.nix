
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-accelerometer";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_accelerometer/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "65d34598c8cda2460a5031552e3f4e71fa4f5fed48068613a7a52f8bca1ee46b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Accelerometer devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
