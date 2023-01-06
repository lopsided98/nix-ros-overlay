
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, joint-state-broadcaster, joint-trajectory-controller, pal-gripper-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-tiago-controller-configuration";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_controller_configuration/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "b03dccd2268a99bc75b899a171c1d3e661e3757114cd76211cef831b8cbda68d";
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
