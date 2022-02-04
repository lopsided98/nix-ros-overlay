
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosservice }:
buildRosPackage {
  pname = "ros-noetic-service-tools";
  version = "0.6.27-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/service_tools/0.6.27-1.tar.gz";
    name = "0.6.27-1.tar.gz";
    sha256 = "0b5656268cf34ce45f8512dbf2f1360ea6f6a980c57fe96f188ea51f34d4c61b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
