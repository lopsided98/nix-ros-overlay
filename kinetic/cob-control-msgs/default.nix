
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-control-msgs";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control_msgs/0.7.3-0.tar.gz;
    sha256 = "02b16ea9d6c18774f65c86460cf9b775cbb6ee8a1c3df97bbeefef61f872e96a";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Common messages and services used in various packages within cob_control.'';
    #license = lib.licenses.Apache 2.0;
  };
}
