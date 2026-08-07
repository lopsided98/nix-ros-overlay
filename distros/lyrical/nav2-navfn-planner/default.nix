
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, builtin-interfaces, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-navfn-planner";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_navfn_planner/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "95c661a66cd642f43dc33a5c43171f80ed874eb021d7750c6ea18b589231b955";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros builtin-interfaces geometry-msgs nav-msgs nav2-core nav2-costmap-2d nav2-ros-common nav2-util pluginlib rclcpp rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 NavFn planner";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
