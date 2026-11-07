
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-cmake-python, ament-index-cpp, ament-index-python, auto-apms-util, behaviortree-cpp, eigen, example-interfaces, rclcpp, rclcpp-action, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-auto-apms-behavior-tree-core";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/jazzy/auto_apms_behavior_tree_core/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "ff15147e70c16059e0fa5d99f5517d06b87df06c02ef7071819547e2d25f3f5c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest example-interfaces ];
  propagatedBuildInputs = [ action-msgs ament-index-cpp ament-index-python auto-apms-util behaviortree-cpp eigen rclcpp rclcpp-action tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Core functionality and cmake tools for AutoAPMS";
    license = with lib.licenses; [ asl20 ];
  };
}
