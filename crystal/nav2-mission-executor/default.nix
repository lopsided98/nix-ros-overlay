
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, nav2-tasks, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, launch, nav2-common, behaviortree-cpp, rclcpp, std-msgs, ament-lint-auto, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav2-mission-executor";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_mission_executor/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "cca9ce8e328491847ee0a5f1733c60f529d270e21040707b150dc68c431dbb74";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-tasks nav2-msgs nav2-common behaviortree-cpp rclcpp std-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-tasks nav2-msgs behaviortree-cpp rclcpp std-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
