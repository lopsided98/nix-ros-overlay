
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-trajectory-controller, launch, launch-pal, pal-pro-gripper-controller-configuration, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-controller-configuration";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_controller_configuration/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "714bb4fb6f696f5790c2d7a1f8036aca7888cfbc9e7f9e596ccdab5b89d3c84f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager joint-trajectory-controller launch launch-pal pal-pro-gripper-controller-configuration ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_sea_arm_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
