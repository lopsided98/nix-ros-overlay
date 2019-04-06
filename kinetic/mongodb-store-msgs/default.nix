
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-store-msgs";
  version = "0.4.4-r2";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_store_msgs/0.4.4-2.tar.gz;
    sha256 = "eb3065137064881113c2dae3a702c174d6a434b4059f2f191de8779c4473b536";
  };

  propagatedBuildInputs = [ message-generation message-runtime actionlib-msgs actionlib ];
  nativeBuildInputs = [ message-generation actionlib-msgs actionlib catkin ];

  meta = {
    description = ''The mongodb_store_msgs package'';
    #license = lib.licenses.MIT;
  };
}
