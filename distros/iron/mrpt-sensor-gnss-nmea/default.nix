
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt-sensorlib, mrpt2, nmea-msgs, rclcpp, rclcpp-components, ros-environment, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-mrpt-sensor-gnss-nmea";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/iron/mrpt_sensor_gnss_nmea/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "d18469187185b9657f6632a8dd7eb1d951ecb21a6dd143b7dfe8307282f3c360";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mrpt-msgs mrpt-sensorlib mrpt2 nmea-msgs rclcpp rclcpp-components tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for GNSS receivers generating NMEA messages (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
