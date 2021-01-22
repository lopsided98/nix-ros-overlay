
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, eus-qpoases, euslisp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-eus-qp";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/eus_qp/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "f1c815c2a12315a280fc83c3ae42d405cb710054d785508ae36f56ba64dfea63";
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
