
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, mrpt-libhwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, nav-msgs, rclcpp, rclcpp-components, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-mrpt-sensor-imu-taobotics";
  version = "0.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/kilted/mrpt_sensor_imu_taobotics/0.2.3-2.tar.gz";
    name = "0.2.3-2.tar.gz";
    sha256 = "7d9094ebc3bd63ba65427c9ace432d37e0fae5f4353b0668fb589be1e6958f2a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common cv-bridge geometry-msgs mrpt-libhwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib nav-msgs rclcpp rclcpp-components sensor-msgs std-msgs stereo-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for Taobotics USB IMUs (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
