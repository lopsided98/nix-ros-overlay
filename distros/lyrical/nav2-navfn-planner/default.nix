
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-navfn-planner";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_navfn_planner/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "10c2bd1fa13ffebb76a65f6fca0355a691ffa159ea467a472d3ea238d540978e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav-msgs nav2-core nav2-costmap-2d nav2-ros-common nav2-util pluginlib rclcpp rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 NavFn planner";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
