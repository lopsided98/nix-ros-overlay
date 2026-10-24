
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-python, auto-apms-behavior-tree-core, auto-apms-interfaces, auto-apms-util, composition-interfaces, generate-parameter-library, geometry-msgs, lifecycle-msgs, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rclpy, ros2cli, ros2param, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-auto-apms-behavior-tree";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/lyrical/auto_apms_behavior_tree/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "3a5d88bbd19c473ee8afc1c6887a1da8fab2379eee3b2630c7ed3a27e8caffd0";
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
