
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dsr-msgs, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-kinetic-dsr-example-py";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/dsr_example_py/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "82f6c00df71dc8e33c7c07662f5ae3d0c2e7a01a4d628c09a20116131cfa4e75";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dsr-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dsr_example Python package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
