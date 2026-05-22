
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-libhwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, rclcpp-components, ros-environment, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mrpt-sensor-bumblebee-stereo";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/rolling/mrpt_sensor_bumblebee_stereo/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "ad3f8dd033dfd3f1613fdb4581403bfa35ed79b99cc92e3750a2d9dedebd130b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-libhwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib rclcpp-components tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for Bumblebee Stereo Cameras using libdc1394 interface (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsd3 ];
  };
}
