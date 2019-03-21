
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosservice, rospy }:
buildRosPackage {
  pname = "ros-kinetic-service-tools";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/service_tools/0.6.10-0.tar.gz;
    sha256 = "f4f1680074978db4195a31fe28347a49b230eab37ff62d4b7490b57c29a9061a";
  };

  propagatedBuildInputs = [ rosservice rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service tools'';
    #license = lib.licenses.Apache 2.0;
  };
}
