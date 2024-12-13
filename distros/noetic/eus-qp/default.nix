
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, eus-qpoases, euslisp, rostest }:
buildRosPackage {
  pname = "ros-noetic-eus-qp";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/eus_qp/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "29812e08a16e80bf58b8cd55f947e4501e46df0a2ef35344f90086edaab9bc3a";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules rostest ];
  checkInputs = [ eus-qpoases ];
  propagatedBuildInputs = [ eigen euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "eus_qp is an interface of euslisp to solve qp problems with linear constraints.";
    license = with lib.licenses; [ asl20 ];
  };
}
