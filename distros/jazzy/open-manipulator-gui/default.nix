
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen3-cmake-module, geometry-msgs, moveit-core, moveit-msgs, moveit-ros-planning, moveit-ros-planning-interface, qt5, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-gui";
  version = "3.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_gui/3.2.4-1.tar.gz";
    name = "3.2.4-1.tar.gz";
    sha256 = "3de285d21596c5eb25889d316b47aad4b5be26af3b03d73848788b1017d225a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen3-cmake-module geometry-msgs moveit-core moveit-msgs moveit-ros-planning moveit-ros-planning-interface qt5.qtbase rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The OpenMANIPULATOR-X GUI ROS 2 package enables users to explore Joint Space,
    Task Space, and even work with the Task Constructor functionality.";
    license = with lib.licenses; [ asl20 ];
  };
}
