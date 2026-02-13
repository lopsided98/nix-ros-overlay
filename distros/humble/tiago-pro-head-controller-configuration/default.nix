
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-head-controller-configuration";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_head_robot-release/archive/release/humble/tiago_pro_head_controller_configuration/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "7293f92edf88aba80e4ab9e6c991b89ec2d0c28f993e459af670d0ee1a5e974a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-broadcaster joint-trajectory-controller launch launch-pal ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_pro_head_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
