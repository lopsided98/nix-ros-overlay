
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-python, ament-index-python, auto-apms-behavior-tree-core, auto-apms-interfaces, auto-apms-util, generate-parameter-library, geometry-msgs, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rclpy, ros2cli, ros2param, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-auto-apms-behavior-tree";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/kilted/auto_apms_behavior_tree/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "8c8a436293d9869105d9d90439d1dd4876b0d30f71b0b7c73f453491bb0aa585";
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
