
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-imu-processors";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/jazzy/imu_processors/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "d318c47a707d68f2e21d2a5a4cde0c25a0e5553502d07a28be95eabe3e5cc77a";
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
