
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-cmake-python, ament-index-cpp, ament-index-python, auto-apms-util, behaviortree-cpp, eigen, example-interfaces, rclcpp, rclcpp-action, tinyxml-2 }:
buildRosPackage {
  pname = "ros-kilted-auto-apms-behavior-tree-core";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/kilted/auto_apms_behavior_tree_core/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "e003a8d2f205a2e3a061ad1c15614bac4952dd5ad127dcb2dc6321e5da8f06d6";
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
