
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, builtin-interfaces, eigen, eigen3-cmake-module, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, ompl, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-nav2-smac-planner";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_smac_planner/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "6a1ff7b8f2d3dec3099a680bb305c9540e4760a39a3cfb2a273d799f632b9ac5";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces eigen eigen3-cmake-module geometry-msgs nav-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util ompl pluginlib rclcpp rclcpp-action rclcpp-lifecycle tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Smac global planning plugin: A*, Hybrid-A*, State Lattice'';
    license = with lib.licenses; [ asl20 ];
  };
}
