
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt-sensorlib, mrpt2, rclcpp, rclcpp-components, ros-environment, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-sensor-gnss-novatel";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/jazzy/mrpt_sensor_gnss_novatel/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "d80d9aac3a4f63cfac8a37d701a47af03cef7a11479f683079b6e9de1fb89a70";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mrpt-msgs mrpt-sensorlib mrpt2 rclcpp rclcpp-components tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for GNSS/IMU Novatel receivers with RTK precision using an NTRIP HTTP source (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
