
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-hwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, rclcpp-components, ros-environment, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-sensor-imu-taobotics";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/lyrical/mrpt_sensor_imu_taobotics/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "b7a93ddcede8cb52a448315195f5b427e16ed64d904fbde78657cc7c83b64c38";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-hwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib rclcpp-components tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for Taobotics USB IMUs (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsd3 ];
  };
}
