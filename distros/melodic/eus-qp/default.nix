
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, eus-qpoases, euslisp, rostest }:
buildRosPackage {
  pname = "ros-melodic-eus-qp";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/eus_qp/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "7e066b267b55b2c98d6b8c9cdf8b988f7c2aab464027045627fc00ea41699309";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules rostest ];
  checkInputs = [ eus-qpoases ];
  propagatedBuildInputs = [ eigen euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_qp is an interface of euslisp to solve qp problems with linear constraints.'';
    license = with lib.licenses; [ asl20 ];
  };
}
