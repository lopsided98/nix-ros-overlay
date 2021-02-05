
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosservice }:
buildRosPackage {
  pname = "ros-kinetic-service-tools";
  version = "0.6.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/service_tools/0.6.20-1.tar.gz";
    name = "0.6.20-1.tar.gz";
    sha256 = "28bd9d5a43028da7fb69cf941f4a9b45fb62175d726717907f63493a432d0a1e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
