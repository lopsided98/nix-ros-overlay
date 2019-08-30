
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosservice, rospy }:
buildRosPackage {
  pname = "ros-kinetic-service-tools";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/service_tools/0.6.14-1.tar.gz;
    sha256 = "cd11311af0d299e445c6ba8a27bcd42d830532ad4a2be9bcb6d27fb71dc4c60a";
  };

  propagatedBuildInputs = [ rosservice rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
