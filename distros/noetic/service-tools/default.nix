
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosservice }:
buildRosPackage {
  pname = "ros-noetic-service-tools";
  version = "0.6.26-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/service_tools/0.6.26-1.tar.gz";
    name = "0.6.26-1.tar.gz";
    sha256 = "e2b3d12c8f99988d5c500ae9e76c5cd00aa5b3afa61f0799693cae311c1ade91";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
