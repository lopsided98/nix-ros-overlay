
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joy, joy-teleop, launch-pal, pmb2-controller-configuration, pmb2-description, robot-state-publisher, twist-mux }:
buildRosPackage {
  pname = "ros-foxy-pmb2-bringup";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/foxy/pmb2_bringup/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "2af111ebb9b45c6d67ef871874f8203a7f73dbb5707986d44190603758f5f84d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joy joy-teleop launch-pal pmb2-controller-configuration pmb2-description robot-state-publisher twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files and scripts needed to bring up the ROS nodes of a PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
