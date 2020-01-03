
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, launch, launch-testing, nav2-common, nav2-msgs, nav2-tasks, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav2-mission-executor";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_mission_executor/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "cca9ce8e328491847ee0a5f1733c60f529d270e21040707b150dc68c431dbb74";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ behaviortree-cpp geometry-msgs nav2-msgs nav2-tasks rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
