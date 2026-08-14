
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, joint-state-broadcaster, launch, launch-pal, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-pmb2-controller-configuration";
  version = "5.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pmb2_robot-release/archive/release/humble/pmb2_controller_configuration/5.12.1-1.tar.gz";
    name = "5.12.1-1.tar.gz";
    sha256 = "bda4689fbf88c42113804ff75011138905519ca36fc18fe085ed779ee807d834";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-broadcaster launch launch-pal ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files and scripts needed to configure
    the controllers of the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
