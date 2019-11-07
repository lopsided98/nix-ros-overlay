
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2-bringup, ament-cmake, nav2-common, lcov, nav2-lifecycle-manager, geometry-msgs, nav2-amcl, ament-cmake-pytest, ament-cmake-gtest, launch, nav2-util, rclcpp, robot-state-publisher, navigation2, gazebo-ros-pkgs, tf2-geometry-msgs, nav-msgs, std-msgs, visualization-msgs, launch-ros, ament-lint-common, rclpy, launch-testing, nav2-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-system-tests";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_system_tests/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "89d1d0631be1e9acb217b115ae2b31621acac0ac1f4b30bae274e23197b52f1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ gazebo-ros-pkgs tf2-geometry-msgs launch-ros rclpy launch-testing nav2-msgs geometry-msgs nav2-util nav2-common nav-msgs rclcpp nav2-lifecycle-manager std-msgs visualization-msgs nav2-amcl ];
  checkInputs = [ ament-cmake-pytest launch-ros ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-bringup gazebo-ros-pkgs navigation2 tf2-geometry-msgs launch-ros rclpy launch-testing nav2-msgs geometry-msgs nav2-util lcov nav-msgs rclcpp robot-state-publisher nav2-lifecycle-manager std-msgs visualization-msgs nav2-amcl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
