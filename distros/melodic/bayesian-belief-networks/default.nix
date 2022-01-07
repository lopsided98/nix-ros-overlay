
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, message-generation, message-runtime, mk, rospy, std-msgs, unzip }:
buildRosPackage {
  pname = "ros-melodic-bayesian-belief-networks";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/bayesian_belief_networks/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "e1b42c1dfb5284eed1db5beb5ea6c769ebc2cbef17b89674d95eed6e15936f12";
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
