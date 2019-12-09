
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dwb-core, launch, launch-testing, pluginlib, nav-2d-msgs, ament-lint-common, ament-cmake, nav2-util, ament-cmake-gtest, nav2-common, ament-cmake-pytest, angles, rclcpp, nav-2d-utils, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-dwb-plugins";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/dwb_plugins/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "93a6f53dbba3f9db52291400ef1e0e5de5b1e241594ac00f7f2a3862553732d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ dwb-core pluginlib nav2-common nav-2d-msgs angles nav2-util rclcpp nav-2d-utils ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ dwb-core pluginlib nav-2d-msgs angles nav2-util rclcpp nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
