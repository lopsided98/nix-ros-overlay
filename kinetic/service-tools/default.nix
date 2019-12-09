
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, rosservice, catkin }:
buildRosPackage {
  pname = "ros-kinetic-service-tools";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/service_tools/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "a878c92f7ac4d67adae6b9a411dce65058fb45a969420a260fdf8f6061dfe221";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
