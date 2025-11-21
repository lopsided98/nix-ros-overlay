
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, nmea-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, rtcm-msgs, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf, xacro }:
buildRosPackage {
  pname = "ros-kilted-sbg-driver";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros2-release/archive/release/kilted/sbg_driver/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "f0042a21ccf7be0db3eee3c646bf28de1f338f592d1a1f967e9943a08137ce64";
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
