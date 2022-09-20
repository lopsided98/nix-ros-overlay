
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eus-nlopt, eus-qp, eus-qpoases, joy-mouse, jsk-calibration, jsk-footstep-controller, jsk-footstep-planner, jsk-ik-server, jsk-teleop-joy }:
buildRosPackage {
  pname = "ros-melodic-jsk-control";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/jsk_control/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "25da1afac0cf0ebad9279c7af4d2d5288d2ad0d5b4339ae54de300998f7be18a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eus-nlopt eus-qp eus-qpoases joy-mouse jsk-calibration jsk-footstep-controller jsk-footstep-planner jsk-ik-server jsk-teleop-joy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
