
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, geometry-msgs, lifecycle-msgs, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-controller";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_controller/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "63acf799994668bc446664c4a3ae3fa98f5ddda431b02eae5b29c49284f11908";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles geometry-msgs lifecycle-msgs nav-2d-msgs nav-2d-utils nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rcl-interfaces rclcpp rclcpp-components rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller action interface";
    license = with lib.licenses; [ asl20 ];
  };
}
