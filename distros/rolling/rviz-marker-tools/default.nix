
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, rclcpp, std-msgs, tf2-eigen, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-marker-tools";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/rolling/rviz_marker_tools/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "f867a1a1d7b98df4491ff50db13bd29006154730ab3b2af3759e87e75962dc38";
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
