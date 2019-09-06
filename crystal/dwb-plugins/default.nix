
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2-dynamic-params, ament-cmake-pytest, ament-cmake, pluginlib, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-util, nav2-common, nav-2d-utils, rclcpp, angles, ament-lint-auto, dwb-core, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-crystal-dwb-plugins";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_plugins/0.1.7-0.tar.gz;
    sha256 = "bed22e1314016069e8dc619d7f6c557e156a3e353c370234fb349f0180b8bc56";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-dynamic-params pluginlib nav2-util nav2-common nav-2d-utils rclcpp angles dwb-core nav-2d-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-dynamic-params pluginlib nav2-util nav-2d-utils rclcpp angles dwb-core nav-2d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
