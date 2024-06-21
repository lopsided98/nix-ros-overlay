
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, force-torque-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, pal-gripper-controller-configuration, pal-hey5-controller-configuration, pal-robotiq-controller-configuration, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-tiago-controller-configuration";
  version = "4.2.13-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_controller_configuration/4.2.13-1.tar.gz";
    name = "4.2.13-1.tar.gz";
    sha256 = "68addf3a9368be3e6d70fa53016a2f4c48a1ba4afe78b367630d8ea52366df83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller force-torque-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-pal pal-gripper-controller-configuration pal-hey5-controller-configuration pal-robotiq-controller-configuration ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Configuration and launch files of TIAGo's controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
