
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rosgraph, tf, roslib, rostopic, pythonPackages, catkin, openssl, rospy, libmongocxx-ros, mongodb-store }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-log";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_log/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "f172d1720a099dcf02680c52aea645d121ebc8bceeb5571bba54c77b3d201619";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs rosgraph tf roslib rostopic openssl rospy libmongocxx-ros mongodb-store ];
  propagatedBuildInputs = [ sensor-msgs rosgraph tf roslib rostopic pythonPackages.pymongo rospy libmongocxx-ros mongodb-store ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_log package'';
    license = with lib.licenses; [ gpl2 ];
  };
}
