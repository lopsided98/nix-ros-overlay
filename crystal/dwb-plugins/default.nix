
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, dwb-core, launch, pluginlib, launch-testing, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-gtest, nav2-common, nav2-dynamic-params, nav-2d-msgs, angles, rclcpp, nav-2d-utils, nav2-util }:
buildRosPackage {
  pname = "ros-crystal-dwb-plugins";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_plugins/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "bed22e1314016069e8dc619d7f6c557e156a3e353c370234fb349f0180b8bc56";
  };

  buildType = "ament_cmake";
  buildInputs = [ dwb-core pluginlib nav2-common nav2-dynamic-params nav-2d-msgs angles nav2-util rclcpp nav-2d-utils ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ dwb-core pluginlib nav2-dynamic-params nav-2d-msgs angles nav2-util rclcpp nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
