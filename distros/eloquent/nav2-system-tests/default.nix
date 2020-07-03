
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, gazebo-ros-pkgs, geometry-msgs, launch, launch-ros, launch-testing, lcov, nav-msgs, nav2-amcl, nav2-bringup, nav2-common, nav2-lifecycle-manager, nav2-msgs, nav2-navfn-planner, nav2-planner, nav2-util, navigation2, rclcpp, rclpy, robot-state-publisher, std-msgs, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-eloquent-nav2-system-tests";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/nav2_system_tests/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "b604381ab2386fb1233924b917b5e321cf954f236b72ee5daa9e4d6c138e5ae9";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing ];
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs launch-ros launch-testing lcov nav-msgs nav2-amcl nav2-bringup nav2-lifecycle-manager nav2-msgs nav2-navfn-planner nav2-planner nav2-util navigation2 rclcpp rclpy robot-state-publisher std-msgs tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
