
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, canopen-402-driver, canopen-core, canopen-fake-slaves, canopen-proxy-driver, canopen-ros2-controllers, controller-manager, forward-command-controller, joint-state-broadcaster, joint-trajectory-controller, lely-core-libraries, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-jazzy-canopen-tests";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/canopen_tests/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "8bef71172c0207646a31de28f702ce012cfe74868b528abd3e3b23a8c335d195";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake lely-core-libraries ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-402-driver canopen-core canopen-fake-slaves canopen-proxy-driver canopen-ros2-controllers controller-manager forward-command-controller joint-state-broadcaster joint-trajectory-controller robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package with tests for ros2_canopen";
    license = with lib.licenses; [ asl20 ];
  };
}
