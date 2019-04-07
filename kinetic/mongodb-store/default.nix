
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mongodb-store-msgs, std-srvs, topic-tools, pythonPackages, catkin, libmongocxx-ros, rostest, message-generation, std-msgs, rospy, openssl, mongodb, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-store";
  version = "0.4.4-r2";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_store/0.4.4-2.tar.gz;
    sha256 = "f436796d73f133bdd319a39fdd4bb8643bdcf9d6f9069c674f6e41213b4b7c35";
  };

  buildInputs = [ mongodb-store-msgs std-srvs topic-tools libmongocxx-ros rostest message-generation std-msgs rospy openssl mongodb pythonPackages.catkin-pkg roscpp geometry-msgs ];
  propagatedBuildInputs = [ mongodb-store-msgs std-srvs pythonPackages.pymongo topic-tools libmongocxx-ros rospy std-msgs mongodb roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package to support MongoDB-based storage and analysis for data from a ROS system, eg. saved messages, configurations etc'';
    #license = lib.licenses.MIT;
  };
}
