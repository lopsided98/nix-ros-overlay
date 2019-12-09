
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, std-msgs, std-srvs, catkin, pythonPackages, openssl, mongodb-store-msgs, rospy, roscpp, topic-tools, message-generation, libmongocxx-ros, mongodb, rostest }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-store";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_store/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "69df4a9045a1063a755510a6b8df7147f2e084b9f5400950722eed40ed323b46";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs std-srvs openssl pythonPackages.catkin-pkg rospy roscpp mongodb-store-msgs topic-tools message-generation libmongocxx-ros mongodb rostest ];
  propagatedBuildInputs = [ geometry-msgs std-msgs std-srvs pythonPackages.pymongo mongodb-store-msgs roscpp topic-tools rospy libmongocxx-ros mongodb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package to support MongoDB-based storage and analysis for data from a ROS system, eg. saved messages, configurations etc'';
    license = with lib.licenses; [ mit ];
  };
}
