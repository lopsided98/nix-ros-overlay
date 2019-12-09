
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, message-runtime, std-msgs, catkin, rospy, message-generation, mk }:
buildRosPackage {
  pname = "ros-kinetic-bayesian-belief-networks";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/bayesian_belief_networks/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "01dd4418d8159368c4e96c5010ae632644b1df9ef28c7d394bad665cb0e71d33";
  };

  buildType = "catkin";
  buildInputs = [ git std-msgs rospy message-generation mk ];
  propagatedBuildInputs = [ std-msgs rospy message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bayesian_belief_networks package form https://github.com/eBay/bayesian-belief-networks, Authored by Neville Newey, Anzar Afaq, Copyright 2013 eBay Software Foundation'';
    license = with lib.licenses; [ asl20 ];
  };
}
