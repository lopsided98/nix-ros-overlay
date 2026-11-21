
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-hwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, novatel-oem6-msgs, rclcpp-components, ros-environment, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-sensor-gnss-novatel";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/jazzy/mrpt_sensor_gnss_novatel/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "c331e2d3c4aaeb6a38c5d51dbb239180bd2a5c24c6bba55b346d174b67d97ffd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-hwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib novatel-oem6-msgs rclcpp-components tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for GNSS/IMU Novatel receivers with RTK precision using an NTRIP HTTP source (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsd3 ];
  };
}
