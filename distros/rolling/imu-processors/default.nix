
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-imu-processors";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_processors/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "afb3256f67bfb18ec5c4f7f530b65521a2e09ef1e283b12a98adfd01d284e77f";
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
