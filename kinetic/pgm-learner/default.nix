
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, pythonPackages, catkin, rospy, message-generation, rostest }:
buildRosPackage {
  pname = "ros-kinetic-pgm-learner";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/pgm_learner/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "4ea596fa5a756d9397f57e599eec3493595a623dfd06dc12cb59162a90cc8b95";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rospy pythonPackages.scipy ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rospy message-runtime pythonPackages.scipy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parameter/Structure Estimation and Inference for Bayesian Belief Network'';
    license = with lib.licenses; [ mit ];
  };
}
