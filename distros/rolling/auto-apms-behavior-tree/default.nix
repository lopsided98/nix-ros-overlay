
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-python, auto-apms-behavior-tree-core, auto-apms-interfaces, auto-apms-util, generate-parameter-library, geometry-msgs, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rclpy, ros2cli, ros2param, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-auto-apms-behavior-tree";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/rolling/auto_apms_behavior_tree/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "cca3e6a20bc61e9ac59988800ed0117f36005f764a5c2fb7c0c1722516e0b04d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ ament-index-python auto-apms-behavior-tree-core auto-apms-interfaces auto-apms-util generate-parameter-library geometry-msgs rcl-interfaces rclcpp rclcpp-action rclcpp-components rclpy ros2cli ros2param std-srvs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Standard AutoAPMS behavior tree nodes and deployment tools";
    license = with lib.licenses; [ asl20 ];
  };
}
