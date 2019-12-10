
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, dwb-core, launch, launch-testing, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-dynamic-params, nav2-util, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-crystal-dwb-plugins";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_plugins/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "bed22e1314016069e8dc619d7f6c557e156a3e353c370234fb349f0180b8bc56";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ angles dwb-core nav-2d-msgs nav-2d-utils nav2-dynamic-params nav2-util pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
