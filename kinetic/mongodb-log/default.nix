
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, pythonPackages, libmongocxx-ros, rosgraph, mongodb-store, rostopic, rospy, openssl, roslib }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-log";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_log/0.4.2-0.tar.gz;
    sha256 = "708debbe8363d1aea8571b9cb40b4e79479c71022a3f1394f25fe14c3ea94ac8";
  };

  propagatedBuildInputs = [ pythonPackages.pymongo tf sensor-msgs libmongocxx-ros rosgraph rostopic mongodb-store rospy roslib ];
  nativeBuildInputs = [ tf sensor-msgs catkin libmongocxx-ros rosgraph rostopic mongodb-store rospy openssl roslib ];

  meta = {
    description = ''The mongodb_log package'';
    #license = lib.licenses.GPLv2;
  };
}
