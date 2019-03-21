
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-test-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/rosjava-release/rosjava_test_msgs-release/archive/release/kinetic/rosjava_test_msgs/0.3.0-0.tar.gz;
    sha256 = "5923bce29d4fa4a29dcd3400ebf777fa3ad611318ff33b1e109331f3a8c2245b";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Test messages for rosjava.'';
    #license = lib.licenses.Apache 2.0;
  };
}
