
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, costmap-queue, dwb-core, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-costmap-2d, nav2-ros-common, nav2-util, pluginlib, rclcpp, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-dwb-critics";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/dwb_critics/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "58cf375519a325c383b3a452ab5cfb280f8408ccb8fbdaad7ffe63ffa074358b";
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
