
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, dwb-core, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-util, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-dwb-plugins";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/dwb_plugins/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "f5a758c9f002536c139271b7366a7e3376e609c00427a20dedad31bc30bd0f70";
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
