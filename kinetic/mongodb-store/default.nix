
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mongodb-store-msgs, std-srvs, catkin, pythonPackages, topic-tools, libmongocxx-ros, rostest, message-generation, std-msgs, rospy, openssl, mongodb, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-store";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_store/0.4.2-0.tar.gz;
    sha256 = "1b81a347853366d384a1a28bdcf3df757252ab12b2f347b92d0145b3e168f535";
  };

  propagatedBuildInputs = [ mongodb-store-msgs std-srvs pythonPackages.pymongo topic-tools libmongocxx-ros rospy std-msgs mongodb roscpp geometry-msgs ];
  nativeBuildInputs = [ mongodb-store-msgs std-srvs topic-tools catkin libmongocxx-ros rostest message-generation std-msgs rospy openssl mongodb pythonPackages.catkin-pkg roscpp geometry-msgs ];

  meta = {
    description = ''A package to support MongoDB-based storage and analysis for data from a ROS system, eg. saved messages, configurations etc'';
    #license = lib.licenses.MIT;
  };
}
