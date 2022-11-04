
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, eus-qpoases, euslisp, rostest }:
buildRosPackage {
  pname = "ros-noetic-eus-qp";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/eus_qp/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "8a78331785cdceaceeff24a7f2eadff219ec60dd87f2c5ccadac5965e2114a69";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules rostest ];
  checkInputs = [ eus-qpoases ];
  propagatedBuildInputs = [ eigen euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_qp is an interface of euslisp to solve qp problems with linear constraints.'';
    license = with lib.licenses; [ asl20 ];
  };
}
