
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-trajectory-controller, position-controllers }:
buildRosPackage {
  pname = "ros-humble-pal-robotiq-controller-configuration";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_robotiq_gripper-release/archive/release/humble/pal_robotiq_controller_configuration/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "b911b8b0efebd0d3b49779928303fa8a55be9c7e30c1db172ce0d26f6c343aa2";
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
