
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt-sensorlib, rclcpp, rclcpp-components, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-generic-sensor";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/jazzy/mrpt_generic_sensor/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "b52a0e6f2d2790bb6ed851948d346dda6a66b00332c73a5b7cfd5bad0da5d827";
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
