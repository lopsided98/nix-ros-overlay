
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dsr-msgs, actionlib-msgs, catkin, message-generation, message-runtime, actionlib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-dsr-example-py";
  version = "0.9.6-r1";

  src = fetchurl {
    url = https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/dsr_example_py/0.9.6-1.tar.gz;
    sha256 = "82f6c00df71dc8e33c7c07662f5ae3d0c2e7a01a4d628c09a20116131cfa4e75";
  };

  buildInputs = [ dsr-msgs message-generation actionlib-msgs actionlib rospy ];
  propagatedBuildInputs = [ dsr-msgs actionlib message-runtime actionlib-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dsr_example Python package'';
    #license = lib.licenses.TODO;
  };
}
