
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, omni-base-controller-configuration, pal-pro-gripper-controller-configuration, pal-sea-arm-controller-configuration, ros2controlcli, tiago-pro-head-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-controller-configuration";
  version = "1.35.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_controller_configuration/1.35.4-1.tar.gz";
    name = "1.35.4-1.tar.gz";
    sha256 = "e692bab9c3ac11dba4e972b1ad917348fe4ddef835579e4505ebfac31a6c993f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-broadcaster joint-trajectory-controller launch launch-pal omni-base-controller-configuration pal-pro-gripper-controller-configuration pal-sea-arm-controller-configuration ros2controlcli tiago-pro-head-controller-configuration ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_pro_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
