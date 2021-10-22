
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, imu-sensor-broadcaster, joint-state-controller }:
buildRosPackage {
  pname = "ros-foxy-pmb2-controller-configuration";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/foxy/pmb2_controller_configuration/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "c16a5f264c729b2aee71f9ce04097ca84915cbf0744e18c7f94982f286141531";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller imu-sensor-broadcaster joint-state-controller ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files and scripts needed to configure
    the controllers of the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
