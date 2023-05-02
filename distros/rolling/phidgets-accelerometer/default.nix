
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-accelerometer";
  version = "2.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_accelerometer/2.3.1-2.tar.gz";
    name = "2.3.1-2.tar.gz";
    sha256 = "88c5f3a98178f7e0a44a8e9e09f8e47170b4c74004f5a70bc8ab1e383c6130d6";
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
