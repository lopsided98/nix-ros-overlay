
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-trajectory-controller, position-controllers }:
buildRosPackage {
  pname = "ros-humble-pal-gripper-controller-configuration";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gripper-release/archive/release/humble/pal_gripper_controller_configuration/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "3f3555809fe09b99cb88a3387b615ed70afb693cade5c5273fe950cfb994d332";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager joint-trajectory-controller position-controllers ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_gripper_controller_configuration package'';
    license = with lib.licenses; [ asl20 ];
  };
}
