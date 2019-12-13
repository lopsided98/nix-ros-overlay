
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, message-generation, message-runtime, mk, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-bayesian-belief-networks";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/bayesian_belief_networks/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "c1e4e187ce194b5d950abba6650820d1cf0b57720d4b06f15242d98bd1080716";
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
