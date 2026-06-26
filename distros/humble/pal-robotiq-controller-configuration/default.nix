
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-trajectory-controller, position-controllers }:
buildRosPackage {
  pname = "ros-humble-pal-robotiq-controller-configuration";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_robotiq_gripper-release/archive/release/humble/pal_robotiq_controller_configuration/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "42db4235b6d2af5b2d2a0de2002de706a21325051ac4c132b9d078be9aa203a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager joint-trajectory-controller position-controllers ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_robotiq_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
