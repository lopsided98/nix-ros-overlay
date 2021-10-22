
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, geometry-msgs, nav-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-sbg-driver";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros2-release/archive/release/galactic/sbg_driver/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "47a6675c2ade91d0bd6367ba292223874da95535f44abca55cc2d3caf60e101a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost geometry-msgs nav-msgs rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS driver package for communication with the SBG navigation systems.'';
    license = with lib.licenses; [ mit ];
  };
}
