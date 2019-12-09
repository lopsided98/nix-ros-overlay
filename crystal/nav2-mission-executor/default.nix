
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, launch, std-msgs, launch-testing, ament-lint-common, ament-cmake, ament-lint-auto, nav2-common, ament-cmake-pytest, nav2-tasks, rclcpp, nav2-msgs, ament-cmake-gtest, behaviortree-cpp }:
buildRosPackage {
  pname = "ros-crystal-nav2-mission-executor";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_mission_executor/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "cca9ce8e328491847ee0a5f1733c60f529d270e21040707b150dc68c431dbb74";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs std-msgs nav2-common nav2-tasks rclcpp nav2-msgs behaviortree-cpp ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs std-msgs nav2-tasks rclcpp nav2-msgs behaviortree-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
