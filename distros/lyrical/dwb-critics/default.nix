
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, costmap-queue, dwb-core, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-costmap-2d, nav2-ros-common, nav2-util, pluginlib, rclcpp, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-dwb-critics";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/dwb_critics/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "861a51b7211a6d30f5f4f3d0583db711418def35b832a1030e8dafa1123fdcad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros costmap-queue dwb-core dwb-msgs geometry-msgs nav-2d-msgs nav-2d-utils nav2-costmap-2d nav2-ros-common nav2-util pluginlib rclcpp tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The dwb_critics package";
    license = with lib.licenses; [ bsd3 ];
  };
}
