
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-trajectory-controller, launch, launch-pal, pal-pro-gripper-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-controller-configuration";
  version = "1.23.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_controller_configuration/1.23.2-1.tar.gz";
    name = "1.23.2-1.tar.gz";
    sha256 = "80ee3d870c2b75f5e3a89f812b1f45412a88d8759553f1964621cfdddc8b8f73";
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
