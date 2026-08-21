
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, rclcpp, std-msgs, tf2-eigen, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rviz-marker-tools";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/lyrical/rviz_marker_tools/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "5c2d94e7fb54583d5a6a00267022f444190ffca7b98ec336debbf2cddad29474";
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
