
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-cob-control-msgs";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control_msgs/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "110349807b99c8fb88f9eb05a583a7ecba916d348daeaec9db70f84ec2a49c74";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages and services used in various packages within cob_control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
