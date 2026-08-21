
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, launch-ros, pal-pro-gripper-wrapper }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-controller-configuration";
  version = "1.12.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_controller_configuration/1.12.6-1.tar.gz";
    name = "1.12.6-1.tar.gz";
    sha256 = "54c8137aae525ead4311c947bab6590b3491e3be02ba90a75a5883120c4ece3e";
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
