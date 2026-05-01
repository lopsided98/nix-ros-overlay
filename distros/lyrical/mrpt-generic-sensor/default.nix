
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt-sensorlib, rclcpp, rclcpp-components, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-generic-sensor";
  version = "0.2.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/lyrical/mrpt_generic_sensor/0.2.4-3.tar.gz";
    name = "0.2.4-3.tar.gz";
    sha256 = "4690a687618840dff3a9640ca483e942d29a154239c7544d9cc4a68928aa18d7";
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
