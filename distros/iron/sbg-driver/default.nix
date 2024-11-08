
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, nmea-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, rtcm-msgs, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-sbg-driver";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros2-release/archive/release/iron/sbg_driver/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "2357814e766e318b3902be918b2c671dcc1e230f64cefff2c619530a7551bd58";
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
