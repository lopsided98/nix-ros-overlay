
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-regulated-pure-pursuit-controller, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-rotation-shim-controller";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_rotation_shim_controller/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "482fb771b4596b3ca85437e4e7f8d4d250f0afa1799d4a4226e909bdfc5c5cd4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common nav2-controller nav2-regulated-pure-pursuit-controller ];
  propagatedBuildInputs = [ angles geometry-msgs nav2-controller nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rcl-interfaces rclcpp rclcpp-lifecycle tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Rotation Shim Controller";
    license = with lib.licenses; [ asl20 ];
  };
}
