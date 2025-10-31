
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-trajectory-controller, launch, launch-pal, pal-pro-gripper-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-controller-configuration";
  version = "1.20.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_controller_configuration/1.20.1-1.tar.gz";
    name = "1.20.1-1.tar.gz";
    sha256 = "2843b101be09b416c976829cf9334c3fd545ee8f20cc0b7e12712b19c2be41f6";
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
