
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-hwdrivers, mrpt-sensorlib, rclcpp, ros-environment, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-sensor-bumblebee-stereo";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/lyrical/mrpt_sensor_bumblebee_stereo/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "b28dcc326f56c12209eccb10b7cc46ef5f19665c35c5a7d7d9b1e1cfc1e78f35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs mrpt-hwdrivers mrpt-sensorlib rclcpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for Bumblebee Stereo Cameras using libdc1394 interface (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsd3 ];
  };
}
