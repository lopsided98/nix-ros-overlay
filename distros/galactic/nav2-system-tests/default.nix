
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, gazebo-ros-pkgs, geometry-msgs, launch, launch-ros, launch-testing, lcov, nav-msgs, nav2-amcl, nav2-behavior-tree, nav2-bringup, nav2-common, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-navfn-planner, nav2-planner, nav2-util, navigation2, python3Packages, rclcpp, rclpy, robot-state-publisher, std-msgs, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-nav2-system-tests";
  version = "1.0.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_system_tests/1.0.12-1.tar.gz";
    name = "1.0.12-1.tar.gz";
    sha256 = "eafb86033015cb54239a81bf76a8e0edfffdb1e4646d487805a2f952b920924a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing python3Packages.pyzmq ];
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs launch-ros launch-testing lcov nav-msgs nav2-amcl nav2-behavior-tree nav2-bringup nav2-lifecycle-manager nav2-map-server nav2-msgs nav2-navfn-planner nav2-planner nav2-util navigation2 rclcpp rclpy robot-state-publisher std-msgs tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
