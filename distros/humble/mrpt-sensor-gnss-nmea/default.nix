
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-libhwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, nmea-msgs, rclcpp-components, ros-environment, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mrpt-sensor-gnss-nmea";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/humble/mrpt_sensor_gnss_nmea/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "afc972b83123440edb34495854352dfb349d9e4bf2af676a9582551ef6fd3a0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-libhwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib nmea-msgs rclcpp-components tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for GNSS receivers generating NMEA messages (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsd3 ];
  };
}
