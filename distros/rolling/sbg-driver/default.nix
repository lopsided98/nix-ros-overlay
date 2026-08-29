
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, nmea-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, rtcm-msgs, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-sbg-driver";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sbg_ros2-release/archive/release/rolling/sbg_driver/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "0a31bf5015115acbf114b3b17b2a38d52e35277a1b705150748715caa16030e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nmea-msgs rclcpp rosidl-default-runtime rtcm-msgs sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-msgs tf2-ros urdf xacro ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS driver package for communication with the SBG navigation systems.";
    license = with lib.licenses; [ mit ];
  };
}
