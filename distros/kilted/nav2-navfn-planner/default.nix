
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-navfn-planner";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_navfn_planner/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "1de334d7ad3b7eaf6a05c5972ea144fc407b47f32d6400e094568fd2c98b9b02";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs nav2-core nav2-costmap-2d nav2-util pluginlib rclcpp rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 NavFn planner";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
