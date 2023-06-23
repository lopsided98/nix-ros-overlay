
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, canopen-402-driver, canopen-core, canopen-fake-slaves, canopen-proxy-driver, canopen-ros2-controllers, controller-manager, forward-command-controller, joint-state-broadcaster, joint-trajectory-controller, lely-core-libraries, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-rolling-canopen-tests";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_tests/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "01f0cae7f00b14dea5f0197d16f517f516a1ea672b815beea464228666b8c9e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake lely-core-libraries ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-402-driver canopen-core canopen-fake-slaves canopen-proxy-driver canopen-ros2-controllers controller-manager forward-command-controller joint-state-broadcaster joint-trajectory-controller robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package with tests for ros2_canopen'';
    license = with lib.licenses; [ asl20 ];
  };
}
