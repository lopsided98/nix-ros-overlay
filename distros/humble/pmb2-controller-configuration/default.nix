
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, joint-state-broadcaster, launch, launch-pal, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-pmb2-controller-configuration";
  version = "5.8.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_controller_configuration/5.8.2-1.tar.gz";
    name = "5.8.2-1.tar.gz";
    sha256 = "1b81250153a2c3abce9c75c64627cf3274886258dd174378bac23494a654a8c6";
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
