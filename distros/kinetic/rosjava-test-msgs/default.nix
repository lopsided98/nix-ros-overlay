
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-test-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/rosjava-release/rosjava_test_msgs-release/archive/release/kinetic/rosjava_test_msgs/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "5923bce29d4fa4a29dcd3400ebf777fa3ad611318ff33b1e109331f3a8c2245b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test messages for rosjava.'';
    license = with lib.licenses; [ asl20 ];
  };
}
