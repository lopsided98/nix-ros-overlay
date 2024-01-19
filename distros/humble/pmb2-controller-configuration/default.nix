
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, joint-state-broadcaster, launch, launch-pal }:
buildRosPackage {
  pname = "ros-humble-pmb2-controller-configuration";
  version = "5.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_controller_configuration/5.0.15-1.tar.gz";
    name = "5.0.15-1.tar.gz";
    sha256 = "0592eebc768c4bb9017ed1f4e7b313c077a6190cea7f8b33a910d8c6ecddcdbc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-broadcaster launch launch-pal ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files and scripts needed to configure
    the controllers of the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
