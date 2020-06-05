
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-gyroscope";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_gyroscope/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "6738890fd259aaf53311d5590749399d89881f0ee1ed5c209e198cd66da7f0f3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Gyroscope devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
