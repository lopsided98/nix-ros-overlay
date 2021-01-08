
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, message-generation, message-runtime, mk, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-bayesian-belief-networks";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/bayesian_belief_networks/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "c574a40d6167801e454fe1134b49090ca4353f724ce320e5ba8f415660fc34fe";
  };

  buildType = "catkin";
  buildInputs = [ git message-generation mk ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bayesian_belief_networks package form https://github.com/eBay/bayesian-belief-networks, Authored by Neville Newey, Anzar Afaq, Copyright 2013 eBay Software Foundation'';
    license = with lib.licenses; [ asl20 ];
  };
}
