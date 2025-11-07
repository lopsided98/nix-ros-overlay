
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-trajectory-controller, launch, launch-pal, pal-pro-gripper-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-controller-configuration";
  version = "1.21.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_controller_configuration/1.21.0-1.tar.gz";
    name = "1.21.0-1.tar.gz";
    sha256 = "54051eb1d8c64f382078b4bfd906acafdedcc0a6c7ddf7e1798848f8873fa2e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager joint-trajectory-controller launch launch-pal pal-pro-gripper-controller-configuration ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_sea_arm_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
