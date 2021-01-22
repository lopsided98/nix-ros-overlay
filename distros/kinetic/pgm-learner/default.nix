
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-pgm-learner";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/pgm_learner/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "d99d925e9202915e1dc39f4c2e6a57064e3ecd6e48ede44a62679fb4d99699b6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-runtime pythonPackages.scipy rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parameter/Structure Estimation and Inference for Bayesian Belief Network'';
    license = with lib.licenses; [ mit ];
  };
}
