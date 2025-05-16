
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, message-generation, message-runtime, mk, python3Packages, rospy, std-msgs, unzip }:
buildRosPackage {
  pname = "ros-noetic-bayesian-belief-networks";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/bayesian_belief_networks/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "474ead8d354cc525be8247be59c6a7312aed0d55895b1ebad55cf251389fcfbe";
  };

  buildType = "catkin";
  buildInputs = [ catkin git message-generation mk python3Packages.packaging unzip ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The bayesian_belief_networks package form https://github.com/eBay/bayesian-belief-networks, Authored by Neville Newey, Anzar Afaq, Copyright 2013 eBay Software Foundation";
    license = with lib.licenses; [ asl20 ];
  };
}
