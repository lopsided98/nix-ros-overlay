
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosservice }:
buildRosPackage {
  pname = "ros-kinetic-service-tools";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/service_tools/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "0f1f6c9deade120beb60b95a80741b9a3974c5739a5cd568864ee778d8303ec9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
