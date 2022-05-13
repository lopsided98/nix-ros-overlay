
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, dwb-core, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-util, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-dwb-plugins";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/dwb_plugins/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "fb4665f3200a43de252b5b5dfbc236e3722fa51131030079cf14a1c7062b432b";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles dwb-core nav-2d-msgs nav-2d-utils nav2-util pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core'';
    license = with lib.licenses; [ bsd3 ];
  };
}
