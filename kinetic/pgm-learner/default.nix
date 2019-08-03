
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-kinetic-pgm-learner";
  version = "2.1.13-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/pgm_learner/2.1.13-1.tar.gz;
    sha256 = "fa006afdbb37f17640f481824458c49f7ce8613d024f079cfc530cf1ae44ecfb";
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
