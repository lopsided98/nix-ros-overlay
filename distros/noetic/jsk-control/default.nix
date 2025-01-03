
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eus-nlopt, eus-qp, eus-qpoases, joy-mouse, jsk-calibration, jsk-footstep-controller, jsk-footstep-planner, jsk-ik-server, jsk-teleop-joy }:
buildRosPackage {
  pname = "ros-noetic-jsk-control";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_control/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "efe74bc0f73ccd4f19ee093f38f80aa9e9337fa38305ccb520a5167be642211f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eus-nlopt eus-qp eus-qpoases joy-mouse jsk-calibration jsk-footstep-controller jsk-footstep-planner jsk-ik-server jsk-teleop-joy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The jsk_control package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
