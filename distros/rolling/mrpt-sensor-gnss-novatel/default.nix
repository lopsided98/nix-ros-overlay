
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-libhwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, novatel-oem6-msgs, rclcpp-components, ros-environment, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mrpt-sensor-gnss-novatel";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/rolling/mrpt_sensor_gnss_novatel/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "323d23afd5a34597a2cc18ce0b6e75d9214ef4354cc0ec1372437fcd691ac30b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-libhwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib novatel-oem6-msgs rclcpp-components tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for GNSS/IMU Novatel receivers with RTK precision using an NTRIP HTTP source (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsd3 ];
  };
}
