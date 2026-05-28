
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-libhwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, rclcpp-components, ros-environment, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-mrpt-sensor-imu-taobotics";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/kilted/mrpt_sensor_imu_taobotics/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "638bc0dfa1ffbcaca409accda5f7fb055779d9fac5a2c90aae30406d0c261db1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-libhwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib rclcpp-components tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for Taobotics USB IMUs (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsd3 ];
  };
}
