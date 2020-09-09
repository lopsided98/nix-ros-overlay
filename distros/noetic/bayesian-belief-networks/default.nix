
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, message-generation, message-runtime, mk, rospy, std-msgs, unzip }:
buildRosPackage {
  pname = "ros-noetic-bayesian-belief-networks";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/bayesian_belief_networks/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "98d9fdac8890a9d3f0cb4a9ada8c0c277fd059ab552a187146e51bbceb6f8b6d";
  };

  buildType = "catkin";
  buildInputs = [ git message-generation mk unzip ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bayesian_belief_networks package form https://github.com/eBay/bayesian-belief-networks, Authored by Neville Newey, Anzar Afaq, Copyright 2013 eBay Software Foundation'';
    license = with lib.licenses; [ asl20 ];
  };
}
