
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake-pytest, ament-cmake, rclcpp-lifecycle, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, nav2-util, launch, tf2-ros, nav2-common, nav-msgs, rclcpp-action, rclcpp, ament-lint-auto, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-nav2-navfn-planner";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_navfn_planner/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "67b0121198596c65c7c5c0b4f60ca00215324593f1891c0c1f3e629c0ef76bf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces rclcpp-lifecycle nav2-msgs nav2-util tf2-ros nav2-common nav-msgs rclcpp-action rclcpp visualization-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp-lifecycle nav2-msgs nav2-util tf2-ros nav-msgs rclcpp-action rclcpp visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
