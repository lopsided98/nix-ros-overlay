
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, message-generation, message-runtime, mk, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-bayesian-belief-networks";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/bayesian_belief_networks/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "1101c78476ea0e89ab54b678f810beeeb02b759d0d329eaca98dacc0e70c671d";
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
