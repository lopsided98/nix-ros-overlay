
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eus-nlopt, jsk-ik-server, jsk-calibration, joy-mouse, jsk-footstep-controller, catkin, eus-qp, jsk-teleop-joy, jsk-footstep-planner, eus-qpoases }:
buildRosPackage {
  pname = "ros-kinetic-jsk-control";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_control/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "3c7ee3361d9f1ca50213630a7ff4a23d6f42b1e551ce3b4c231e64f600bee211";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eus-nlopt jsk-ik-server jsk-calibration joy-mouse jsk-footstep-controller eus-qp jsk-teleop-joy jsk-footstep-planner eus-qpoases ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
