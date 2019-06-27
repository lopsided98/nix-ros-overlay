
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosservice, rospy }:
buildRosPackage {
  pname = "ros-kinetic-service-tools";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/service_tools/0.6.12-1.tar.gz;
    sha256 = "b1ae26c99eac778492dbf8c0bfdc9952cb25c7cad8d0773ad5f05a01d79835e3";
  };

  propagatedBuildInputs = [ rosservice rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
