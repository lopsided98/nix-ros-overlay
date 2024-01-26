
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, force-torque-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, pal-gripper-controller-configuration, pal-hey5-controller-configuration, pal-robotiq-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-tiago-controller-configuration";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_controller_configuration/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "0912150e331ea23bcafd983fdf0845b8f946e7e23e23359594e759f46764a5e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller force-torque-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-pal pal-gripper-controller-configuration pal-hey5-controller-configuration pal-robotiq-controller-configuration ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Configuration and launch files of TIAGo's controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
