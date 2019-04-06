
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosservice, rospy }:
buildRosPackage {
  pname = "ros-kinetic-service-tools";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/service_tools/0.6.11-0.tar.gz;
    sha256 = "00c8c44abf2e46e6fbb76541dcc36ca17ae129fb6e512124833faff0e54ebcfd";
  };

  propagatedBuildInputs = [ rosservice rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    #license = lib.licenses.Apache 2.0;
  };
}
