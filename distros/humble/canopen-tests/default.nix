
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, canopen-402-driver, canopen-core, canopen-fake-slaves, canopen-proxy-driver, canopen-ros2-controllers, controller-manager, forward-command-controller, joint-state-broadcaster, joint-trajectory-controller, lely-core-libraries, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-canopen-tests";
  version = "0.2.11-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/humble/canopen_tests/0.2.11-2.tar.gz";
    name = "0.2.11-2.tar.gz";
    sha256 = "30a3e81760857467905ceaff7f46ed0fe0d07d0d377f4e1d12369835665a2f6c";
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
