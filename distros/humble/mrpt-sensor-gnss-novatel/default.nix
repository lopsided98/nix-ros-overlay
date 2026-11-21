
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-hwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, novatel-oem6-msgs, rclcpp-components, ros-environment, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mrpt-sensor-gnss-novatel";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/humble/mrpt_sensor_gnss_novatel/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "e23d026e22459260d61ea2e16cb5bd50a35eff6e9d82073e96d1c234465f2686";
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
