
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt-sensorlib, mrpt2, nmea-msgs, rclcpp, rclcpp-components, ros-environment, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mrpt-sensor-gnss-nmea";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/humble/mrpt_sensor_gnss_nmea/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "176cd42490f152aa4c0ea2765eb9c5f9ca24e75e86eb02eb46b33e52241eaa8d";
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
