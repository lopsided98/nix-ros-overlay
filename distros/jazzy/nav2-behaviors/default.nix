
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav2-behaviors";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_behaviors/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "a5ef5496bd4a9fb6365f0f3e50c53cd6269ce7efe0251c27f2b7dd84e09cbcc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common tf2 tf2-geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 behavior server";
    license = with lib.licenses; [ asl20 ];
  };
}
