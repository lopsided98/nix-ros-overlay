
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-trajectory-controller, position-controllers }:
buildRosPackage {
  pname = "ros-humble-pal-robotiq-controller-configuration";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_robotiq_gripper-release/archive/release/humble/pal_robotiq_controller_configuration/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "e2b9f6935821513c84bbe58dad9e185c38d88f0b6d4d57b3e139ae398392c29b";
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
