
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mk, git, catkin, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-bayesian-belief-networks";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/bayesian_belief_networks/2.1.11-0.tar.gz;
    sha256 = "0c8068d7e845e580945f2bad1b3944b43bec26cb1623a3834081dc85d90250dc";
  };

  propagatedBuildInputs = [ std-msgs message-runtime rospy ];
  nativeBuildInputs = [ message-generation rospy std-msgs mk git catkin ];

  meta = {
    description = ''The bayesian_belief_networks package form https://github.com/eBay/bayesian-belief-networks, Authored by Neville Newey, Anzar Afaq, Copyright 2013 eBay Software Foundation'';
    #license = lib.licenses.Apache License, Version 2.0;
  };
}
