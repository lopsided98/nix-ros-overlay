
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-ros, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, message-filters, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rcpputils, rcutils, rosgraph-msgs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-tf2-ros";
  version = "0.46.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_ros/0.46.4-1.tar.gz";
    name = "0.46.4-1.tar.gz";
    sha256 = "4fcec8a1728e92a6b414837293f3ff7581a0f5d29a7ed4e6045da107408aa56c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common rosgraph-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs message-filters rcl-interfaces rclcpp rclcpp-action rclcpp-components rcpputils rcutils tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-ros-core ];

  meta = {
    description = "This package contains the C++ ROS bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
