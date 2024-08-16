
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt-sensorlib, mrpt2, rclcpp, rclcpp-components, ros-environment, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mrpt-sensor-imu-taobotics";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/rolling/mrpt_sensor_imu_taobotics/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "4ebadbfc640f8d9cc341118c2553f1c0a1acda67b5abf40c9a566884064ade86";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mrpt-msgs mrpt-sensorlib mrpt2 rclcpp rclcpp-components tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for Taobotics USB IMUs (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
