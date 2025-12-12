
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, rclcpp, std-msgs, tf2-eigen, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rviz-marker-tools";
  version = "0.1.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/jazzy/rviz_marker_tools/0.1.4-3.tar.gz";
    name = "0.1.4-3.tar.gz";
    sha256 = "f6f6a470feb75d18d4b951a1d4ac2ff64fe36543e850e30b5b287854c2d61b99";
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
