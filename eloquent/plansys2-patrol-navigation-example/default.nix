
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-msgs, plansys2-domain-expert, plansys2-executor, plansys2-msgs, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-patrol-navigation-example";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_patrol_navigation_example/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "bb0609f3fb15954c4bfcbbf898ef864982b7549fcc9b5a6777f826c6e8efcd54";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-msgs plansys2-domain-expert plansys2-executor plansys2-msgs rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An example including Navigation'';
    license = with lib.licenses; [ asl20 ];
  };
}
