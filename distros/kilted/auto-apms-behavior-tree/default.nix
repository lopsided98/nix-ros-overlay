
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-python, auto-apms-behavior-tree-core, auto-apms-interfaces, auto-apms-util, composition-interfaces, generate-parameter-library, geometry-msgs, lifecycle-msgs, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rclpy, ros2cli, ros2param, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-auto-apms-behavior-tree";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/kilted/auto_apms_behavior_tree/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "4a38b78e344b8737d853641bfca10fbcdff7718b8bdb2fe486f7c8f607241102";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ ament-index-python auto-apms-behavior-tree-core auto-apms-interfaces auto-apms-util composition-interfaces generate-parameter-library geometry-msgs lifecycle-msgs rcl-interfaces rclcpp rclcpp-action rclcpp-components rclpy ros2cli ros2param std-srvs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Standard AutoAPMS behavior tree nodes and deployment tools";
    license = with lib.licenses; [ asl20 ];
  };
}
