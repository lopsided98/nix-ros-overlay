
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, nmea-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, rtcm-msgs, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-sbg-driver";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros2-release/archive/release/rolling/sbg_driver/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "bacde16f83e0e82305a7152b1c957959d4e4f129e2736f12068936dd6b97777a";
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
