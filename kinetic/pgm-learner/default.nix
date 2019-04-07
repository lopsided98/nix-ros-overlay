
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-kinetic-pgm-learner";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/pgm_learner/2.1.11-0.tar.gz;
    sha256 = "a443607dc2f9dc266c5aa2155924895bd7da130e9a2e7b0198239384ac0bc20e";
  };

  buildInputs = [ pythonPackages.scipy message-generation rospy ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.scipy message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parameter/Structure Estimation and Inference for Bayesian Belief Network'';
    #license = lib.licenses.MIT;
  };
}
