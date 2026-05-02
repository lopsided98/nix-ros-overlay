
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt-sensorlib, rclcpp, rclcpp-components, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mrpt-generic-sensor";
  version = "0.2.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/rolling/mrpt_generic_sensor/0.2.4-2.tar.gz";
    name = "0.2.4-2.tar.gz";
    sha256 = "e00f9fd95ddcc5ddbed07cd9436565822706e689b653d87eb312e573687129b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mrpt-msgs mrpt-sensorlib rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for interfacing any sensor supported by mrpt-hwdrivers";
    license = with lib.licenses; [ bsd3 ];
  };
}
