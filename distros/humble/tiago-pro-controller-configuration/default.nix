
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, omni-base-controller-configuration, pal-pro-gripper-controller-configuration, pal-sea-arm-controller-configuration, ros2controlcli, tiago-pro-head-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-controller-configuration";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_controller_configuration/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "19c6c0332ee4ec70246ec1096ce4878da65e14924125ddc281bca7e6e37601f1";
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
