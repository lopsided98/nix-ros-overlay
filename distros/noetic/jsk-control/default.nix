
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eus-nlopt, eus-qp, eus-qpoases, joy-mouse, jsk-calibration, jsk-footstep-controller, jsk-footstep-planner, jsk-ik-server, jsk-teleop-joy }:
buildRosPackage {
  pname = "ros-noetic-jsk-control";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_control/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "d9147f76e0e6ddd8d01656c801e6acf003e0f6b3843e8d7647cafc7f691d7f4e";
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
