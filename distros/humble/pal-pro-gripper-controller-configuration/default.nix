
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, launch-ros, pal-pro-gripper-wrapper }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-controller-configuration";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_controller_configuration/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "08a4f5b0b3b80d90ae2e0d541f0fad17db096412c49c10a9b4c9269dd3dadac3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager joint-state-broadcaster joint-trajectory-controller launch launch-pal launch-ros pal-pro-gripper-wrapper ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_pro_gripper_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
