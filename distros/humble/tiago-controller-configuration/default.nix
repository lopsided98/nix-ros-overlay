
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, force-torque-sensor-broadcaster, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, omni-base-controller-configuration, pal-gripper-controller-configuration, pal-hey5-controller-configuration, pal-robotiq-controller-configuration, pmb2-controller-configuration, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-tiago-controller-configuration";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_controller_configuration/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "7e8d6ca8fbb97b2bd6280c36c9f092a3d5078685f305ecc3f15646002747bb68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller force-torque-sensor-broadcaster imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-pal omni-base-controller-configuration pal-gripper-controller-configuration pal-hey5-controller-configuration pal-robotiq-controller-configuration pmb2-controller-configuration ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Configuration and launch files of TIAGo's controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
