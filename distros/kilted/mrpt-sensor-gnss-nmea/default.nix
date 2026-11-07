
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-hwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, nmea-msgs, rclcpp-components, ros-environment, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-mrpt-sensor-gnss-nmea";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/kilted/mrpt_sensor_gnss_nmea/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "b0a8612acd99fe3e517472c4f205fdad78858720ecae3e779c66ce26e5726fea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-hwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib nmea-msgs rclcpp-components tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for GNSS receivers generating NMEA messages (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsd3 ];
  };
}
