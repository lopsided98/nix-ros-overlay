
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, message-generation, message-runtime, mk, python3Packages, rospy, std-msgs, unzip }:
buildRosPackage {
  pname = "ros-noetic-bayesian-belief-networks";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/bayesian_belief_networks/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "b089828d28c213376adf2f59b812f4b162e0ae77a2158b8bb256fd65c0f61f88";
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
