
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosservice }:
buildRosPackage {
  pname = "ros-noetic-service-tools";
  version = "0.6.31-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/service_tools/0.6.31-1.tar.gz";
    name = "0.6.31-1.tar.gz";
    sha256 = "4420b905b2f2ddcd230cb4b187f22b3a4334f79bdaf0a5f14c3782a7eb6f67cf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
