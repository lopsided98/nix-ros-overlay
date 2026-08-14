
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, ros2controlcli, tiago-controller-configuration }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-controller-configuration";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_robot-release/archive/release/humble/tiago_dual_controller_configuration/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "ac7a6eb3f71a249ea4a80af4bcea514b99cda76b457c1bf2aab1b7e5072e0c4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch launch-pal ros2controlcli tiago-controller-configuration ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Configuration and launch files of TIAGo Dual 's controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
