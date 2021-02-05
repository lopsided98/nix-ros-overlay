
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosservice }:
buildRosPackage {
  pname = "ros-noetic-service-tools";
  version = "0.6.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/service_tools/0.6.20-1.tar.gz";
    name = "0.6.20-1.tar.gz";
    sha256 = "9411074ab73dcc7d46a93570aae481a5398bb1efa701fd7532eef115392b4687";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
