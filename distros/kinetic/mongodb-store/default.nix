
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, libmongocxx-ros, message-generation, mongodb, mongodb-store-msgs, openssl, pythonPackages, roscpp, rospy, rostest, std-msgs, std-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-store";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_store/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "69df4a9045a1063a755510a6b8df7147f2e084b9f5400950722eed40ed323b46";
  };

  buildType = "catkin";
  buildInputs = [ message-generation openssl pythonPackages.catkin-pkg rostest ];
  propagatedBuildInputs = [ geometry-msgs libmongocxx-ros mongodb mongodb-store-msgs pythonPackages.pymongo roscpp rospy std-msgs std-srvs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package to support MongoDB-based storage and analysis for data from a ROS system, eg. saved messages, configurations etc'';
    license = with lib.licenses; [ mit ];
  };
}
