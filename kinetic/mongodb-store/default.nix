
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mongodb-store-msgs, std-srvs, openssl, catkin, pythonPackages, libmongocxx-ros, rostest, std-msgs, message-generation, rospy, topic-tools, mongodb, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-store";
  version = "0.4.5-r1";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_store/0.4.5-1.tar.gz;
    sha256 = "69df4a9045a1063a755510a6b8df7147f2e084b9f5400950722eed40ed323b46";
  };

  buildInputs = [ openssl mongodb-store-msgs std-srvs topic-tools libmongocxx-ros rostest message-generation rospy std-msgs mongodb pythonPackages.catkin-pkg roscpp geometry-msgs ];
  propagatedBuildInputs = [ mongodb-store-msgs std-srvs pythonPackages.pymongo topic-tools libmongocxx-ros rospy std-msgs mongodb roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package to support MongoDB-based storage and analysis for data from a ROS system, eg. saved messages, configurations etc'';
    license = with lib.licenses; [ mit ];
  };
}
