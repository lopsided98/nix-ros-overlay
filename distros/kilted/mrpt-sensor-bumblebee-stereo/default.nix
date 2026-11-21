
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-hwdrivers, mrpt-sensorlib, rclcpp, ros-environment, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-mrpt-sensor-bumblebee-stereo";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/kilted/mrpt_sensor_bumblebee_stereo/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "6ad3623b7724db4aea3aa9a78014ce05392a9b75b2cba6229f0e3561b78c9d13";
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
