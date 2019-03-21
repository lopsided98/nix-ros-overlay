
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib }:
buildRosPackage {
  pname = "ros-melodic-mongodb-store-msgs";
  version = "0.5.0-r5";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/melodic/mongodb_store_msgs/0.5.0-5.tar.gz;
    sha256 = "b5df2309a7ca62a19b97e73cf22e30ccf3e8b320ef40e8faf07f9ed144e77e90";
  };

  propagatedBuildInputs = [ message-generation message-runtime actionlib-msgs actionlib ];
  nativeBuildInputs = [ message-generation actionlib-msgs actionlib catkin ];

  meta = {
    description = ''The mongodb_store_msgs package'';
    #license = lib.licenses.MIT;
  };
}
