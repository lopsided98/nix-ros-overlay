
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, gazebo-ros-pkgs, geometry-msgs, launch, launch-ros, launch-testing, lcov, nav-msgs, nav2-amcl, nav2-behavior-tree, nav2-bringup, nav2-common, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-navfn-planner, nav2-planner, nav2-util, navigation2, python3Packages, rclcpp, rclpy, robot-state-publisher, std-msgs, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-nav2-system-tests";
  version = "1.2.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_system_tests/1.2.10-1.tar.gz";
    name = "1.2.10-1.tar.gz";
    sha256 = "ea6f3ccaa8af1e7541056c538f9f2b2b116c0b88faaaa60b2477c6f156f53078";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing python3Packages.pyzmq ];
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs launch-ros launch-testing lcov nav-msgs nav2-amcl nav2-behavior-tree nav2-bringup nav2-lifecycle-manager nav2-map-server nav2-msgs nav2-navfn-planner nav2-planner nav2-util navigation2 rclcpp rclpy robot-state-publisher std-msgs tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO";
    license = with lib.licenses; [ asl20 ];
  };
}
