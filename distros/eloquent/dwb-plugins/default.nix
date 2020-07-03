
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, dwb-core, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-util, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-dwb-plugins";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/dwb_plugins/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "537057bddddc83729547dd455f83fdee957aa4ebb74337f730c063ddac301f6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles dwb-core nav-2d-msgs nav-2d-utils nav2-util pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
