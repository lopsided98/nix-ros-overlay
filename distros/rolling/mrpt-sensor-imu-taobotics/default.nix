
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, mrpt-libhwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, nav-msgs, rclcpp, rclcpp-components, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mrpt-sensor-imu-taobotics";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/rolling/mrpt_sensor_imu_taobotics/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "caadc5e6595244a37ba5c65068be3040bbe11dcadab3590c7499fac86a433386";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common cv-bridge geometry-msgs mrpt-libhwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib nav-msgs rclcpp rclcpp-components sensor-msgs std-msgs stereo-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for Taobotics USB IMUs (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
