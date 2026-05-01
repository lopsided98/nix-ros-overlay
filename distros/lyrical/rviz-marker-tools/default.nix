
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, rclcpp, std-msgs, tf2-eigen, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rviz-marker-tools";
  version = "0.1.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/lyrical/rviz_marker_tools/0.1.5-3.tar.gz";
    name = "0.1.5-3.tar.gz";
    sha256 = "bcb81b859c7c5226201f474436d7da8c8e2ab5171f237455ea013526809b127c";
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
