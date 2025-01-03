
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, nmea-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, rtcm-msgs, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-sbg-driver";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros2-release/archive/release/jazzy/sbg_driver/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "5f34b89c418dfb5118f7a92882215f42be9ee32f5e43fb5b5bea256cac2077e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nmea-msgs rclcpp rosidl-default-runtime rtcm-msgs sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS driver package for communication with the SBG navigation systems.";
    license = with lib.licenses; [ mit ];
  };
}
