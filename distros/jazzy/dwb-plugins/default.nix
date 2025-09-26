
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, dwb-core, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-util, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-dwb-plugins";
  version = "1.3.9-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/dwb_plugins/1.3.9-1.tar.gz";
    name = "1.3.9-1.tar.gz";
    sha256 = "4756bc3f8c9e7373284c43b867589653031d2b95f88a7172c2da8a380b2d9945";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles dwb-core nav-2d-msgs nav-2d-utils nav2-util pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core";
    license = with lib.licenses; [ bsd3 ];
  };
}
