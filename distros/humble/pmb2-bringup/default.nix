
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joy-teleop, launch-pal, pmb2-controller-configuration, pmb2-description, robot-state-publisher, twist-mux }:
buildRosPackage {
  pname = "ros-humble-pmb2-bringup";
  version = "5.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_bringup/5.0.3-1.tar.gz";
    name = "5.0.3-1.tar.gz";
    sha256 = "689565b0a2bebb52f8928e89cc871b13e26125d7eb443a021a8fe03e77503ce6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joy-teleop launch-pal pmb2-controller-configuration pmb2-description robot-state-publisher twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files and scripts needed to bring up the ROS nodes of a PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
