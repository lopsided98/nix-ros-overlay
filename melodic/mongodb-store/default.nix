
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mongodb-store-msgs, std-srvs, openssl, catkin, pythonPackages, rostest, std-msgs, message-generation, rospy, topic-tools, mongodb, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mongodb-store";
  version = "0.5.0-r5";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/melodic/mongodb_store/0.5.0-5.tar.gz;
    sha256 = "6a139eb69db2efaa95e3b7a013a61624e082e580bdc4c8ba2f331ecda89a0b39";
  };

  buildInputs = [ openssl mongodb-store-msgs std-srvs topic-tools rostest message-generation rospy std-msgs mongodb pythonPackages.catkin-pkg roscpp geometry-msgs ];
  propagatedBuildInputs = [ mongodb-store-msgs std-srvs pythonPackages.pymongo topic-tools rospy std-msgs mongodb roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package to support MongoDB-based storage and analysis for data from a ROS system, eg. saved messages, configurations etc'';
    license = with lib.licenses; [ mit ];
  };
}
