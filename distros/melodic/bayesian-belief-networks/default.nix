
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, message-generation, message-runtime, mk, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-bayesian-belief-networks";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/bayesian_belief_networks/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "7e2b9320140daa462ba8dd1d21d3ee14349f263a50dfc22fcafb270e768fceae";
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
