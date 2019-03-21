
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mk, git, catkin, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-bayesian-belief-networks";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/bayesian_belief_networks/2.1.11-0.tar.gz;
    sha256 = "14c8edbbf6a4f6936db71b1c71cdc68355286b74ce209cf3070a2008efec892f";
  };

  propagatedBuildInputs = [ std-msgs message-runtime rospy ];
  nativeBuildInputs = [ message-generation rospy std-msgs mk git catkin ];

  meta = {
    description = ''The bayesian_belief_networks package form https://github.com/eBay/bayesian-belief-networks, Authored by Neville Newey, Anzar Afaq, Copyright 2013 eBay Software Foundation'';
    #license = lib.licenses.Apache License, Version 2.0;
  };
}
