
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-store-msgs";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_store_msgs/0.4.2-0.tar.gz;
    sha256 = "bbb8dced7ecc5b9ecdd6b39d1f7703a7d00be5d5af5f2bda35a24eddb7a8d132";
  };

  propagatedBuildInputs = [ message-generation message-runtime actionlib-msgs actionlib ];
  nativeBuildInputs = [ message-generation actionlib-msgs actionlib catkin ];

  meta = {
    description = ''The mongodb_store_msgs package'';
    #license = lib.licenses.MIT;
  };
}
