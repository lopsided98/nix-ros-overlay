
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, nav2-bringup, nav2-util, nav2-msgs, nav-msgs, ament-lint-auto, ament-cmake-pytest, robot-state-publisher, launch-testing, ament-lint-common, tf2-geometry-msgs, nav2-common, rclpy, rclcpp, ament-cmake-gtest, std-msgs, navigation2, lcov, gazebo-ros-pkgs, launch, nav2-lifecycle-manager, launch-ros, visualization-msgs, nav2-amcl }:
buildRosPackage {
  pname = "ros-dashing-nav2-system-tests";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_system_tests/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "89d1d0631be1e9acb217b115ae2b31621acac0ac1f4b30bae274e23197b52f1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ gazebo-ros-pkgs geometry-msgs nav-msgs launch-testing std-msgs nav2-lifecycle-manager launch-ros tf2-geometry-msgs rclpy nav2-common visualization-msgs nav2-amcl nav2-util rclcpp nav2-msgs ];
  checkInputs = [ launch launch-testing launch-ros ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs lcov nav-msgs robot-state-publisher std-msgs launch-testing nav2-lifecycle-manager launch-ros navigation2 tf2-geometry-msgs rclpy visualization-msgs nav2-amcl nav2-bringup nav2-util rclcpp nav2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
