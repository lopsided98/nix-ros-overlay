
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, rclcpp, std-msgs, tf2-eigen, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rviz-marker-tools";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/lyrical/rviz_marker_tools/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "aead5f70fbd04573c6c4726be7df7ba550f8e330a4b6c1b993aa2e6ee178768d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake urdfdom-headers ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometry-msgs moveit-common rclcpp std-msgs tf2-eigen visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Tools for marker creation / handling";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
