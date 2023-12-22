
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, force-torque-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, pal-gripper-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-tiago-controller-configuration";
  version = "4.0.27-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_controller_configuration/4.0.27-1.tar.gz";
    name = "4.0.27-1.tar.gz";
    sha256 = "701058c4c0d9f92ea29a12cc2b54203d71c9789be613689772434a04f7d3f415";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller force-torque-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-pal pal-gripper-controller-configuration ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Configuration and launch files of TIAGo's controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
