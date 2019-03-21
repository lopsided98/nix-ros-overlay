
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, rostopic, rospy }:
buildRosPackage {
  pname = "ros-kinetic-generic-throttle";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/generic_throttle/0.6.10-0.tar.gz;
    sha256 = "b756238fff2e4f45e7a59ff0dcee042ba760978b71c2d4e795a91a9f26fe5e3e";
  };

  propagatedBuildInputs = [ cv-bridge rostopic rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    #license = lib.licenses.Apache 2.0;
  };
}
