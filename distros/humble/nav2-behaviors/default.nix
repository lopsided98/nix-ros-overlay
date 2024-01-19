
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-nav2-behaviors";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_behaviors/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "10594c3ae1d566801d1660bd5c97f7b5e6932770258a0d31de153ddd2324af0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common tf2 tf2-geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
