
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, dwb-core, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-util, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-dwb-plugins";
  version = "1.1.7-r3";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/dwb_plugins/1.1.7-3.tar.gz";
    name = "1.1.7-3.tar.gz";
    sha256 = "7f4d289b90260149a9a221d149de3ea8d0d7fbd06323d07ccb9533b656636b9a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles dwb-core nav-2d-msgs nav-2d-utils nav2-util pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core'';
    license = with lib.licenses; [ bsd3 ];
  };
}
