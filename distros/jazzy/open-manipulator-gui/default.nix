
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen3-cmake-module, geometry-msgs, moveit-core, moveit-msgs, moveit-ros-planning, moveit-ros-planning-interface, qt5, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-gui";
  version = "4.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_gui/4.0.7-1.tar.gz";
    name = "4.0.7-1.tar.gz";
    sha256 = "8bed860d764b15017333e23b3b9189de29758300acf28306c9545390813a08e4";
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
