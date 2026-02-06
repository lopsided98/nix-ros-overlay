
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-python, ament-index-python, auto-apms-behavior-tree-core, auto-apms-interfaces, auto-apms-util, generate-parameter-library, geometry-msgs, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rclpy, ros2cli, ros2param, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-auto-apms-behavior-tree";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/jazzy/auto_apms_behavior_tree/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "f18a959630942a7878dcddc7ff40045f48286c7985df7af09d10cf9c5a5d365b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-index-python auto-apms-behavior-tree-core auto-apms-interfaces auto-apms-util generate-parameter-library geometry-msgs rcl-interfaces rclcpp rclcpp-action rclcpp-components rclpy ros2cli ros2param std-srvs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Standard AutoAPMS behavior tree nodes and deployment tools";
    license = with lib.licenses; [ asl20 ];
  };
}
