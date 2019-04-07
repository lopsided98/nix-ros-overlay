
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, libmongocxx-ros, roslib, rosgraph, rostopic, mongodb-store, rospy, openssl, tf }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-log";
  version = "0.4.4-r2";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_log/0.4.4-2.tar.gz;
    sha256 = "c3eab2526fa63a48778723282db9807350a4140642d52d60ea0a87dfc832d90b";
  };

  buildInputs = [ tf sensor-msgs libmongocxx-ros rosgraph rostopic mongodb-store rospy openssl roslib ];
  propagatedBuildInputs = [ pythonPackages.pymongo tf sensor-msgs libmongocxx-ros rosgraph rostopic mongodb-store rospy roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_log package'';
    #license = lib.licenses.GPLv2;
  };
}
