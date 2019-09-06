
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosservice, rospy }:
buildRosPackage {
  pname = "ros-melodic-service-tools";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/service_tools/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "d8de2097736deeef77aac6f13f80218cc42979293c72d00e0cce6dff9a954cd0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosservice rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
