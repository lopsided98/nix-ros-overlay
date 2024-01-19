
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-trajectory-controller, position-controllers }:
buildRosPackage {
  pname = "ros-humble-pal-robotiq-controller-configuration";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_robotiq_gripper-release/archive/release/humble/pal_robotiq_controller_configuration/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "f9b434f25ed6b8e54eadf5e9d18fd45e14cf15ae6c7578d648593d82eba1744a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager joint-trajectory-controller position-controllers ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_robotiq_controller_configuration package'';
    license = with lib.licenses; [ asl20 ];
  };
}
