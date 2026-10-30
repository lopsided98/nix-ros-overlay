
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-msgs, mrpt-sensorlib, rclcpp, rclcpp-components, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-generic-sensor";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/jazzy/mrpt_generic_sensor/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "5cd57e4366a9691d1e85a03b06183396662709772e3ea9e5dd43eb7d40e0e308";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-msgs mrpt-sensorlib rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for interfacing any sensor supported by mrpt-hwdrivers";
    license = with lib.licenses; [ bsd3 ];
  };
}
