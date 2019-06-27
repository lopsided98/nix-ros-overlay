
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-kinetic-pgm-learner";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/pgm_learner/2.1.12-1.tar.gz;
    sha256 = "846693577af4871bced780fbd432ffe093dbe597bd8ab46e396956021d3bb5fd";
  };

  buildInputs = [ pythonPackages.scipy message-generation rospy ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.scipy message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parameter/Structure Estimation and Inference for Bayesian Belief Network'';
    license = with lib.licenses; [ mit ];
  };
}
