
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-behaviors";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_behaviors/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "5130e0cfd8ec0f5da474c6343db027258fd415d4463640646b63aeae247e9366";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-action ];
  propagatedBuildInputs = [ geometry-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-components rclcpp-lifecycle std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 behavior server";
    license = with lib.licenses; [ asl20 ];
  };
}
