
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, nav2-msgs, rclcpp-action, rclcpp-lifecycle, geometry-msgs, rclcpp, launch, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, visualization-msgs, ament-cmake-pytest, nav2-util, builtin-interfaces, nav-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-navfn-planner";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_navfn_planner/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "67b0121198596c65c7c5c0b4f60ca00215324593f1891c0c1f3e629c0ef76bf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action rclcpp-lifecycle geometry-msgs nav-msgs rclcpp nav2-common visualization-msgs nav2-util builtin-interfaces nav2-msgs tf2-ros ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-action rclcpp-lifecycle geometry-msgs nav-msgs rclcpp visualization-msgs nav2-util builtin-interfaces nav2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
