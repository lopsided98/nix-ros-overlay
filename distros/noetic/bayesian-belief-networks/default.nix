
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, message-generation, message-runtime, mk, rospy, std-msgs, unzip }:
buildRosPackage {
  pname = "ros-noetic-bayesian-belief-networks";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/bayesian_belief_networks/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "2fe668ade379094723382cf451a6c2115ad22fea43586006cee1c0a9d3332f36";
  };

  buildType = "catkin";
  buildInputs = [ catkin git message-generation mk unzip ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bayesian_belief_networks package form https://github.com/eBay/bayesian-belief-networks, Authored by Neville Newey, Anzar Afaq, Copyright 2013 eBay Software Foundation'';
    license = with lib.licenses; [ asl20 ];
  };
}
