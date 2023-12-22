
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, lifecycle-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, sick-safevisionary-base, sick-safevisionary-interfaces }:
buildRosPackage {
  pname = "ros-iron-sick-safevisionary-driver";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/iron/sick_safevisionary_driver/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "6e88f1e3fa21377f02ac37ed066a275074714d3b4a0b84a6abcaa207c936de3a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost cv-bridge lifecycle-msgs rclcpp rclcpp-lifecycle sensor-msgs sick-safevisionary-base sick-safevisionary-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides an interface to read the sensor output of a SICK Safevisionary sensor in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
