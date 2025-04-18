
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen3-cmake-module, geometry-msgs, moveit-core, moveit-msgs, moveit-ros-planning, moveit-ros-planning-interface, qt5, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-open-manipulator-x-gui";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/humble/open_manipulator_x_gui/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "7a9355886586f029278a7f49beeb7be51ab38d08b7906fb817684e8fedce9a4f";
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
