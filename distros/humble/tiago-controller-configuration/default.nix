
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, force-torque-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, pal-gripper-controller-configuration, pal-hey5-controller-configuration, pal-robotiq-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-tiago-controller-configuration";
  version = "4.2.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_controller_configuration/4.2.3-1.tar.gz";
    name = "4.2.3-1.tar.gz";
    sha256 = "22272cc6ac90f0f2815dd4a79cf0c1d0fb308ad0b7c0410bbbc920a0d33ab4af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller force-torque-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-pal pal-gripper-controller-configuration pal-hey5-controller-configuration pal-robotiq-controller-configuration ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Configuration and launch files of TIAGo's controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
