
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, lifecycle-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, sick-safevisionary-base, sick-safevisionary-interfaces }:
buildRosPackage {
  pname = "ros-jazzy-sick-safevisionary-driver";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/jazzy/sick_safevisionary_driver/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "d6ce6791a182046f4381ad62da6e0a70f24bc15fe146e9ffa4e3ae80f62a35e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost cv-bridge lifecycle-msgs rclcpp rclcpp-lifecycle sensor-msgs sick-safevisionary-base sick-safevisionary-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides an interface to read the sensor output of a SICK Safevisionary sensor in ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
