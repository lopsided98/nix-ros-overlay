
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen3-cmake-module, geometry-msgs, moveit-core, moveit-msgs, moveit-ros-planning, moveit-ros-planning-interface, qt5, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-open-manipulator-gui";
  version = "4.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/lyrical/open_manipulator_gui/4.1.2-3.tar.gz";
    name = "4.1.2-3.tar.gz";
    sha256 = "9c4fcd5ddaa3decda33347a13e387cd99b496afea183ad9706ea978517ef7a2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen3-cmake-module geometry-msgs moveit-core moveit-msgs moveit-ros-planning moveit-ros-planning-interface qt5.qtbase rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The OpenMANIPULATOR GUI ROS 2 package enables users to explore Joint Space,
    Task Space, and even work with the Task Constructor functionality.";
    license = with lib.licenses; [ asl20 ];
  };
}
