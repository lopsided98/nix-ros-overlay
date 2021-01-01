
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, message-generation, message-runtime, mk, rospy, std-msgs, unzip }:
buildRosPackage {
  pname = "ros-noetic-bayesian-belief-networks";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/bayesian_belief_networks/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "d1d29e63bcd7143dda22e3de735cb375146b274c9c2e3c34859759f091665ed9";
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
