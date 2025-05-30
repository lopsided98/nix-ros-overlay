
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-imu-processors";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_processors/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "a2b1a2d97856b37af10b1e5a68df52256150bb699ee531f5d7724b465c7302b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cpplint ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclcpp rclcpp-components sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Processors for sensor_msgs::Imu data";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
