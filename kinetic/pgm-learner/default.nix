
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-pgm-learner";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/pgm_learner/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "785335a5569271ba95841e304ec771f5d0b20b21832f4133e64b6e0d5a0b4fd0";
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
