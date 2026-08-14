
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, eigen, gbenchmark, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-mppi-controller";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_mppi_controller/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "b264c258349141b7a7b57123e35e1abac8d4a911420209d07e96b3d0baa154be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros angles eigen nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common gbenchmark ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-ros-common nav2-util pluginlib rclcpp rclcpp-lifecycle std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "nav2_mppi_controller";
    license = with lib.licenses; [ mit ];
  };
}
