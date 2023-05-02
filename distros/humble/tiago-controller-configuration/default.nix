
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, joint-state-broadcaster, joint-trajectory-controller, pal-gripper-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-tiago-controller-configuration";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_controller_configuration/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "2b536cdf02dd58f2d6a12690bc3e4a1370c7a85eb035aa7a442ba201bf33c21a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-broadcaster joint-trajectory-controller pal-gripper-controller-configuration ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Configuration and launch files of TIAGo's controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
