
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eus-nlopt, eus-qp, eus-qpoases, joy-mouse, jsk-calibration, jsk-footstep-controller, jsk-footstep-planner, jsk-ik-server, jsk-teleop-joy }:
buildRosPackage {
  pname = "ros-melodic-jsk-control";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/jsk_control/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "8ab1ebd0fef82e7268dec4d22ad02b0491e1a94cc4787b5fb8866c4746e2fda4";
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
