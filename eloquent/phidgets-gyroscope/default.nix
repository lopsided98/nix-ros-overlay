
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, launch, rclcpp-components, std-msgs, std-srvs, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-gyroscope";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_gyroscope/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "91f8832e91d6b19b4e9c27baa8041b951069832214a5a60ecbd9a6ba218a26a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp-components std-msgs std-srvs phidgets-api rclcpp ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-components launch std-msgs std-srvs phidgets-api rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Gyroscope devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
