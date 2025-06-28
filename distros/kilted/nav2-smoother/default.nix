
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, angles, nav-2d-utils, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-smoother";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_smoother/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "6d9b2888637af1f9d5351e68dd1b0cc6d9cb1f0d35d1b7a98d12c0e6105c4d4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common rclcpp-action ];
  propagatedBuildInputs = [ angles nav-2d-utils nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-components rclcpp-lifecycle tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Smoother action interface";
    license = with lib.licenses; [ asl20 ];
  };
}
