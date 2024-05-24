
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt-sensorlib, rclcpp, rclcpp-components, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-generic-sensor";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/jazzy/mrpt_generic_sensor/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "a8371d06c6dcd92eb6af0d486b9c37606196576b0fe2338512eb9ed880f7b2c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mrpt-msgs mrpt-sensorlib rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for interfacing any sensor supported by mrpt-hwdrivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
