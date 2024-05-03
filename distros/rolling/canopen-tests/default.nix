
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, canopen-402-driver, canopen-core, canopen-fake-slaves, canopen-proxy-driver, canopen-ros2-controllers, controller-manager, forward-command-controller, joint-state-broadcaster, joint-trajectory-controller, lely-core-libraries, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-rolling-canopen-tests";
  version = "0.2.12-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_tests/0.2.12-2.tar.gz";
    name = "0.2.12-2.tar.gz";
    sha256 = "215c6eec06e1c85fa02a3ed567f6c2a99d21eb3dd34a83ea525221cd79b7275c";
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
