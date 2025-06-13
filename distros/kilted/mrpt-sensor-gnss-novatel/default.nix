
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, mrpt-libhwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, nav-msgs, rclcpp, rclcpp-components, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-mrpt-sensor-gnss-novatel";
  version = "0.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/kilted/mrpt_sensor_gnss_novatel/0.2.3-2.tar.gz";
    name = "0.2.3-2.tar.gz";
    sha256 = "d87041e8c26edc93a91dc19f48be2892a2795cc09b08b54e57fb15ef1c6579b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common cv-bridge geometry-msgs mrpt-libhwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib nav-msgs rclcpp rclcpp-components sensor-msgs std-msgs stereo-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for GNSS/IMU Novatel receivers with RTK precision using an NTRIP HTTP source (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
