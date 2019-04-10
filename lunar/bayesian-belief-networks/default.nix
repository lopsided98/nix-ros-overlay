
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mk, git, catkin, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-lunar-bayesian-belief-networks";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/bayesian_belief_networks/2.1.11-2.tar.gz;
    sha256 = "2a7f118dee5c12f22487c9dc1093089386b9ff8bc64bd3ddd0883140da01f79a";
  };

  buildInputs = [ message-generation rospy std-msgs mk git ];
  propagatedBuildInputs = [ std-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bayesian_belief_networks package form https://github.com/eBay/bayesian-belief-networks, Authored by Neville Newey, Anzar Afaq, Copyright 2013 eBay Software Foundation'';
    #license = lib.licenses.Apache License, Version 2.0;
  };
}
