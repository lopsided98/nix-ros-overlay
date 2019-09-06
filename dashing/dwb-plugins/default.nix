
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, pluginlib, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-util, nav2-common, nav-2d-utils, rclcpp, angles, ament-lint-auto, dwb-core, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-dashing-dwb-plugins";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/dwb_plugins/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "42e05c69271d9deb9ab9a3aac8add3a3b1ac1107e29e737fc7d75516f3e442ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib nav2-util nav2-common nav-2d-utils rclcpp angles dwb-core nav-2d-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ pluginlib nav2-util nav-2d-utils rclcpp angles dwb-core nav-2d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
