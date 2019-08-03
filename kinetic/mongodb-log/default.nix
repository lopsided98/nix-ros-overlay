
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, libmongocxx-ros, roslib, rosgraph, rostopic, mongodb-store, rospy, openssl, tf }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-log";
  version = "0.4.5-r1";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_log/0.4.5-1.tar.gz;
    sha256 = "f172d1720a099dcf02680c52aea645d121ebc8bceeb5571bba54c77b3d201619";
  };

  buildInputs = [ tf sensor-msgs libmongocxx-ros rosgraph rostopic mongodb-store rospy openssl roslib ];
  propagatedBuildInputs = [ pythonPackages.pymongo tf sensor-msgs libmongocxx-ros rosgraph rostopic mongodb-store rospy roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_log package'';
    license = with lib.licenses; [ gpl2 ];
  };
}
