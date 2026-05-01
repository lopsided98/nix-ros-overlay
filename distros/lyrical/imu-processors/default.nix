
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-imu-processors";
  version = "0.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/lyrical/imu_processors/0.6.1-3.tar.gz";
    name = "0.6.1-3.tar.gz";
    sha256 = "71400916b61542d923d260383d231536881b72058e66d5a53de13860264e1d23";
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
