
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt-sensorlib, mrpt2, rclcpp, rclcpp-components, ros-environment, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-mrpt-sensor-gnns-nmea";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/iron/mrpt_sensor_gnns_nmea/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "000787ff7ab8e01f29b0061d1d90917a8efab0017a48d8cdf174530527c8b5ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mrpt-msgs mrpt-sensorlib mrpt2 rclcpp rclcpp-components tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for GNNS receivers generating NMEA messages (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
